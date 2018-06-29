unit ufrmAbout;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls
  , fileinfo
  , winpeimagereader {need this for reading exe info}
  , elfreader {needed for reading ELF executables}
  , machoreader {needed for reading MACH-O executables}
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  , cthreads
  {$ENDIF}{$ENDIF}
  ;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    btnClose: TButton;
    lblAppCopyright: TLabel;
    lblAppVersion: TLabel;
    lblAppName: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private

  public

  end;

var
  frmAbout: TfrmAbout;
  FileVerInfo: TFileVersionInfo;

implementation

{$R *.lfm}

{ TfrmAbout }

procedure TfrmAbout.btnCloseClick(Sender: TObject);
begin
  frmAbout.Close;
end;

procedure TfrmAbout.FormShow(Sender: TObject);
begin
  FileVerInfo:=TFileVersionInfo.Create(nil);
  try
    FileVerInfo.ReadFileInfo;
    lblAppVersion.Caption := 'v' + FileVerInfo.VersionStrings.Values['FileVersion'];
    lblAppCopyright.Caption := FileVerInfo.VersionStrings.Values['LegalCopyright'];
  finally
    FileVerInfo.Free;
  end;
end;


end.

