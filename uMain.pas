unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, uThreadEmail, StdCtrls, ExtCtrls, ComCtrls;

type
  TfrmMain = class(TForm)
    GroupBox1: TGroupBox;
    edtUsername: TEdit;
    edtPassword: TEdit;
    Username: TLabel;
    Password: TLabel;
    Label1: TLabel;
    edtHost: TEdit;
    Label2: TLabel;
    edtPort: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    edtTo: TEdit;
    Label4: TLabel;
    edtSubject: TEdit;
    btnAttchment: TSpeedButton;
    btnClearAttchment: TSpeedButton;
    Panel1: TPanel;
    btnSendEmail: TSpeedButton;
    odAttchment: TOpenDialog;
    GroupBox3: TGroupBox;
    reBody: TRichEdit;
    lblAttachment: TLabel;
    rgEncryptionType: TRadioGroup;
    rgSMTPAuthentication: TRadioGroup;
    procedure btnSendEmailClick(Sender: TObject);
    procedure btnAttchmentClick(Sender: TObject);
    procedure btnClearAttchmentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  IdSMTP;

procedure TfrmMain.btnSendEmailClick(Sender: TObject);
var
  email: TThreadEmail;
  corpo: TStringList;
begin
  corpo := TStringList.Create;
  try
    corpo.AddStrings(reBody.Lines);

//    parametros.NomeRemetente := edtUsername.Text;
//    parametros.Remetente := edtUsername.Text;
//    parametros.Destinatario := edtTo.Text;
//    parametros.Assunto := edtSubject.Text;
//    parametros.Anexo := lblAttachment.Caption;
//    parametros.Host := edtHost.Text;
//    parametros.Username := edtUsername.Text;
//    parametros.Password := edtPassword.Text;
//    parametros.Port := StrToInt(edtPort.Text);
//    parametros.Corpo := corpo;

    email := TThreadEmail.new()
      .definirDadosAutenticacao(edtUsername.Text, edtHost.Text, edtUsername.Text, edtPassword.Text, StrToInt(edtPort.Text), TTipoAutenticacao(rgEncryptionType.ItemIndex), TIdSMTPAuthenticationType(rgSMTPAuthentication.ItemIndex))
      .adicionarDestinatario(edtTo.Text)
      .definirConteudo(edtSubject.Text, corpo.Text);

  finally
    FreeAndNil(corpo);
  end;
end;

procedure TfrmMain.btnAttchmentClick(Sender: TObject);
begin
  if odAttchment.Execute then
    lblAttachment.Caption := odAttchment.FileName;

  btnClearAttchment.Visible := odAttchment.FileName <> EmptyStr;
end;

procedure TfrmMain.btnClearAttchmentClick(Sender: TObject);
begin
  lblAttachment.Caption := EmptyStr;
  btnClearAttchment.Visible := True;
end;

end.

