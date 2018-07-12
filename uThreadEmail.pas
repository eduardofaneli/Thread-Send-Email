unit uThreadEmail;

interface

uses
  Classes, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IBCustomDataSet, IBQuery, IBDatabase,
  IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL;

type
  TParametrosEmail = class
  private
    FPort: Integer;
    FHost: String;
    FPassword: String;
    FUsername: String;
    FAssunto: String;
    FRemetente: String;
    FNomeRemetente: String;
    FDestinatario: String;
    FAnexo: String;
    FCorpo: TStringList;
  public
    destructor Destroy; override;
  published
    property Host         : String read FHost     write FHost    ;
    property Port         : Integer read FPort     write FPort    ;
    property Password     : String read FPassword write FPassword;
    property Username     : String read FUsername write FUsername;
    property NomeRemetente  : String read FNomeRemetente write FNomeRemetente;
    property Remetente    : String read FRemetente write FRemetente;
    property Destinatario : String read FDestinatario write FDestinatario;
    property Assunto      : String read FAssunto write FAssunto;
    property Corpo        : TStringList read FCorpo write FCorpo;
    property Anexo        : String read FAnexo write FAnexo;

  end;
  TThreadEmail = class(TThread)
  private
    IdSSLIOHandlerSocket: TIdSSLIOHandlerSocket;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;

    procedure EnviarEmail();
    { Private declarations }
  protected
    FParametros: TParametrosEmail;
    procedure Execute; override;
  public
    constructor Create(AParametros: TParametrosEmail);
    destructor Destroy; override;
  end;

implementation

uses SysUtils;

{ TThreadEmail }

constructor TThreadEmail.Create(AParametros: TParametrosEmail);
begin
  inherited Create(False);
  FreeOnTerminate := True;

  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocket.Create(nil);
  IdSMTP := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);

  FParametros := AParametros;
end;

destructor TThreadEmail.Destroy;
begin
  FreeAndNil(FParametros);
  FreeAndNil(IdSSLIOHandlerSocket);
  FreeAndNil(IdSMTP);
  FreeAndNil(IdMessage);
  inherited;
end;

procedure TThreadEmail.EnviarEmail;
begin

  IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
  IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

  with IdSMTP do
  begin
    IOHandler := IdSSLIOHandlerSocket;
    AuthenticationType := atLogin;
    Port := FParametros.Port;
    Host := FParametros.Host;
    Password := FParametros.Password;
    Username := FParametros.Username;
    try
      Connect;
    except
      Connect;
    end;

    try
      Authenticate;
    except
      Exit;
    end;

    with IdMessage do
    begin

      From.Address := FParametros.Remetente;
      From.Name := FParametros.NomeRemetente;
      Recipients.Clear;
      Recipients.Add;
      Recipients.Items[0].Address := FParametros.Destinatario;
      Subject := FParametros.Assunto;
      Body := FParametros.Corpo;
      if FParametros.Anexo <> EmptyStr then
        TIdAttachment.Create(MessageParts, FParametros.Anexo);

    end;
    Send(IdMessage);
    Disconnect;
  end;
end;

procedure TThreadEmail.Execute;
begin
  EnviarEmail();
end;

{ TParametrosEmail }

destructor TParametrosEmail.Destroy;
begin
  FreeAndNil(FCorpo);
  inherited;
end;

end.
 