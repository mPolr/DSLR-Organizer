unit ufrmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, ComCtrls;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    ilImages: TImageList;
    mnuHelpAbout: TMenuItem;
    mnuAbout: TMenuItem;
    mnuActions: TMenuItem;
    mnuOptionsSettings: TMenuItem;
    mnuOptions: TMenuItem;
    mnuMainFileExit: TMenuItem;
    mnuMainFile: TMenuItem;
    mnuMain: TMainMenu;
    tblMain: TToolBar;
    btnUpdateGPS: TToolButton;
    procedure btnUpdateGPSClick(Sender: TObject);
    procedure mnuHelpAboutClick(Sender: TObject);
    procedure mnuMainFileClick(Sender: TObject);
    procedure mnuMainFileExitClick(Sender: TObject);
  private

  public

  end;

var
  frmMain: TfrmMain;

implementation

uses ufrmUpdateGPS, ufrmAbout;
{$R *.lfm}

{ TfrmMain }

procedure TfrmMain.mnuMainFileClick(Sender: TObject);
begin

end;

procedure TfrmMain.mnuMainFileExitClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TfrmMain.mnuHelpAboutClick(Sender: TObject);
begin
     ufrmAbout.frmAbout.ShowModal;
end;

procedure TfrmMain.btnUpdateGPSClick(Sender: TObject);
begin
     ufrmUpdateGPS.frmUpdateGPS.ShowModal;
end;

end.

