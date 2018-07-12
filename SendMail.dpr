program SendMail;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uThreadEmail in 'uThreadEmail.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
