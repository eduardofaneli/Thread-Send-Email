unit uThreadEmail;

interface

uses
  Classes, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IBCustomDataSet, IBQuery, IBDatabase, IdIOHandler,
  IdIOHandlerSocket, IdSSLOpenSSL, IdText;

type
  TTipoAutenticacao = (taSemAutenticacao = -1, taSSL = 0, taTLS = 1);

  TThreadEmail = class(TThread)
  private
    FEmail: string;
    FServidor: string;
    FUsuario: string;
    FSenha: string;
    FPorta: Integer;
    FAssunto: string;
    FConteudo: string;
    FAnexos: TStrings;
    FTipoAutenticacao: TTipoAutenticacao;
    FTipoAutenticacaoSMTP: TIdSMTPAuthenticationType;
    FSSL: TIdSSLIOHandlerSocketOpenSSL;
    FSmtp: TIdSMTP;
    FMensagem: TIdMessage;
    FTexto: TIdText;
    FDestinatarios: TStrings;
    FDestinatariosCC: TStrings;
    FDestinatariosCCO: TStrings;
    FContentType: string;
    FCharSet: string;
    FLog: TStrings;
    procedure configurar();
    procedure carregarDestinatarios();
    { Private declarations }
  protected
    procedure Execute; override;
  public
    constructor Create();
    destructor Destroy; override;
    function adicionarDestinatario(const pEmail: string): TThreadEmail;
    function adicionarDestinatarioCopia(const pEmail: string): TThreadEmail;
    function adicionarDestinatarioCopiaOculta(const pEmail: string): TThreadEmail;
    function adicionarAnexos(const pAnexo: string): TThreadEmail;
    function definirConteudo(const pAssunto, pConteudo: string; pAnexos: TStrings = nil): TThreadEmail;
    function definirDadosAutenticacao(pEmail, pServidor, pUsuario, pSenha: string; pPorta: Integer; pTipoAutenticacao: TTipoAutenticacao; pTipoAutenticacaoSMTP: TIdSMTPAuthenticationType = satDefault): TThreadEmail;
    function defineContentType(const ContentType: string): TThreadEmail;
    function defineCharSet(const CharSet: string = 'ISO-8859-1'): TThreadEmail;
    function getLog(): string;
    class function new(): TThreadEmail;
  end;

implementation

uses
  SysUtils, IdExplicitTLSClientServerBase, IdAttachmentFile, System.StrUtils;

{ TThreadEmail }

function TThreadEmail.adicionarAnexos(const pAnexo: string): TThreadEmail;
begin
  Result := Self;
  if not Assigned(FAnexos) then
    FAnexos := TStringList.Create;

  FAnexos.Add(pAnexo);
end;

function TThreadEmail.adicionarDestinatario(const pEmail: string): TThreadEmail;
begin
  Result := Self;
  FDestinatarios.Add(pEmail);
end;

function TThreadEmail.adicionarDestinatarioCopia(const pEmail: string): TThreadEmail;
begin
  Result := Self;
  FDestinatariosCC.Add(pEmail);
end;

function TThreadEmail.adicionarDestinatarioCopiaOculta(const pEmail: string): TThreadEmail;
begin
  Result := Self;
  FDestinatariosCCO.Add(pEmail);
end;

procedure TThreadEmail.carregarDestinatarios;
var
  destinatario, email: string;
  contador: Integer;
begin
  contador := 0;
  FMensagem.Recipients.clear;

  if FDestinatarios.Count = 1 then
  begin
    for email in SplitString(FDestinatarios.Text, ';') do
    begin
      if Length(email) <> 0 then
      begin
        FMensagem.Recipients.Add;
        FMensagem.Recipients.Items[contador].Address := email.Trim();
        Inc(contador);
      end;
    end;
  end
  else
  begin
    for destinatario in FDestinatarios do
    begin
      FMensagem.Recipients.Add;
      FMensagem.Recipients.Items[contador].Address := destinatario;
      Inc(contador);
    end;
  end;

  contador := 0;
  FMensagem.CCList.clear;
  for destinatario in FDestinatariosCC do
  begin
    FMensagem.CCList.Add;
    FMensagem.CCList.Items[contador].Address := destinatario;
    Inc(contador);
  end;

  contador := 0;
  FMensagem.BccList.Clear;
  for destinatario in FDestinatariosCCO do
  begin
    FMensagem.BccList.Add;
    FMensagem.BccList.Items[contador].Address := destinatario;
    Inc(contador);
  end;
end;

procedure TThreadEmail.configurar;
begin
  FSmtp.Host := FServidor;
  FSmtp.Port := FPorta;
  FSmtp.Username := FUsuario;
  FSmtp.Password := FSenha;
  FSmtp.AuthType := FTipoAutenticacaoSMTP;

  case FTipoAutenticacao of
    taSSL:
      begin
        FSSL.SSLOptions.Method := sslvSSLv23;
        FSSL.SSLOptions.Mode := sslmUnassigned;
        FSmtp.IOHandler := FSSL;
      end;
    taTLS:
      begin
        FSSL.SSLOptions.Method := sslvTLSv1;
        FSmtp.IOHandler := FSSL;
        FSmtp.UseTLS := utUseExplicitTLS;
      end;
  end;
end;

constructor TThreadEmail.Create();
begin
  inherited Create(False);
  FreeOnTerminate := True;

  FContentType := 'text/html';
  FCharSet := 'ISO-8859-1';
  FDestinatarios := TStringList.create;
  FDestinatariosCC := TStringList.Create;
  FDestinatariosCCO := TStringList.Create;
  FLog := TStringList.Create;

  FSSL := TIdSSLIOHandlerSocketOpenSSL.create(nil);
  FSmtp := TIdSMTP.create(nil);
  FMensagem := TIdMessage.create(nil);

  FSmtp.AuthType := TIdSMTPAuthenticationType.satDefault;
  FSmtp.UseTLS := utNoTLSSupport;
  FSSL.SSLOptions.Mode := IdSSLOpenSSL.sslmClient;
end;

function TThreadEmail.defineCharSet(const CharSet: string): TThreadEmail;
begin
  Result := Self;
  FCharSet := CharSet;
end;

function TThreadEmail.defineContentType(const ContentType: string): TThreadEmail;
begin
  Result := Self;
  FContentType :=  IfThen(ContentType = EmptyStr, 'text/html', ContentType);
end;

function TThreadEmail.definirConteudo(const pAssunto, pConteudo: string; pAnexos: TStrings): TThreadEmail;
begin
  FAssunto := pAssunto;
  FConteudo := pConteudo;
  FAnexos := pAnexos;

  Result := Self;
end;

function TThreadEmail.definirDadosAutenticacao(pEmail, pServidor, pUsuario, pSenha: string; pPorta: Integer; pTipoAutenticacao: TTipoAutenticacao; pTipoAutenticacaoSMTP: TIdSMTPAuthenticationType): TThreadEmail;
begin
  FEmail := pEmail;
  FServidor := pServidor;
  FUsuario := pUsuario;
  FSenha := pSenha;
  FPorta := pPorta;
  FTipoAutenticacao := pTipoAutenticacao;
  FTipoAutenticacaoSMTP := pTipoAutenticacaoSMTP;

  Result := Self;
end;

destructor TThreadEmail.Destroy;
begin
  try
    if (Assigned(FLog)) then
      FreeAndNil(FLog);
  except
  end;

  try
    if (Assigned(FAnexos)) then
      FreeAndNil(FAnexos);
  except
  end;

  try
    FreeAndNil(FDestinatarios);
  except
  end;

  try
    FreeAndNil(FDestinatariosCC);
  except
  end;

  try
    FreeAndNil(FDestinatariosCCO);
  except
  end;

  try
    FreeAndNil(FTexto);
  except
  end;

  try
    if FSmtp.Connected then
      FSmtp.Disconnect(TRUE);
  except
  end;

  try
    UnLoadOpenSSLLibrary();
  except
  end;

  try
    if Assigned(FSSL) then
      FreeAndNil(FSSL);
  except
  end;

  try
    FreeAndNil(FSmtp);
  except
  end;

  try
    FreeAndNil(FMensagem);
  except
  end;

  inherited;
end;

procedure TThreadEmail.Execute;
var
  anexo: string;
begin
  configurar();

  FMensagem.From.Address := FUsuario;
  FMensagem.From.Name := FEmail;
  FMensagem.Subject := FAssunto;

  if Assigned(FAnexos) then
  begin
    for anexo in FAnexos do
    begin
      TIdAttachmentFile.Create(FMensagem.MessageParts, anexo);
    end;
  end;

  carregarDestinatarios();

  FTexto := TIdText.create(FMensagem.MessageParts);
  FTexto.ContentType := FContentType;
  FTexto.CharSet := FCharSet;
  FTexto.Body.Text := FConteudo;

  try
    FSmtp.Connect();

    FSmtp.Authenticate();
  except
    on E: Exception do
    begin
      E.Message := E.Message + ' > Erro na conexão ou autenticação ';
      FLog.Add(E.Message);
//      raise
    end;
  end;

  try
    FSmtp.Send(FMensagem);
  except
    on E: Exception do
    begin
      E.Message := E.Message + ' > Erro ao enviar email ';
      FLog.Add(E.Message);
//      raise
    end;
  end;

  FSmtp.Disconnect;
end;

function TThreadEmail.getLog: string;
begin
  Result := FLog.Text;
end;

class function TThreadEmail.new: TThreadEmail;
begin
  Result := Self.Create;
end;

end.

