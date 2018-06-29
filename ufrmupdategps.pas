unit ufrmUpdateGPS;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls, Buttons;

type

  { TfrmUpdateGPS }

  TfrmUpdateGPS = class(TForm)
    btnUpdateGPS: TBitBtn;
    btnClose: TBitBtn;
    grpManufacturer: TGroupBox;
    grpNikon: TRadioGroup;
    barUpdateProgress: TProgressBar;
    procedure btnCloseClick(Sender: TObject);
    procedure btnUpdateGPSClick(Sender: TObject);
    procedure grpNikonSelectionChanged(Sender: TObject);
  private

  public

  end;

var
  frmUpdateGPS: TfrmUpdateGPS;

implementation

{$R *.lfm}

{ TfrmUpdateGPS }

procedure TfrmUpdateGPS.grpNikonSelectionChanged(Sender: TObject);
begin
     // TODO: Снимать выделения в других производителях
end;

procedure TfrmUpdateGPS.btnCloseClick(Sender: TObject);
begin
  frmUpdateGPS.Close;
end;

procedure TfrmUpdateGPS.btnUpdateGPSClick(Sender: TObject);
begin
     // TODO: Скачивание файла A-GPS в зависимости от модели
end;

end.

