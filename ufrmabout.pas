unit ufrmAbout;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);

  private

  public

  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.lfm}

{ TfrmAbout }

procedure TfrmAbout.btnCloseClick(Sender: TObject);
begin
  frmAbout.Close;
end;

end.

