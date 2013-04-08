unit Splash_Screen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr;

type
  TsplashForm = class(TForm)
    AppBar: TPanel;
    CloseButton: TImage;
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    mainLogo: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure AppBarResize;
    procedure AppBarShow(mode: integer);
  public
    { Public declarations }
  end;

var
  splashForm: TsplashForm;

implementation

{$R *.dfm}
uses
  Login_Screen;
const
  AppBarHeight = 75;

procedure TsplashForm.AppBarResize;
begin
  AppBar.SetBounds(0, AppBar.Parent.Height - AppBarHeight,
    AppBar.Parent.Width, AppBarHeight);
end;

procedure TsplashForm.AppBarShow(mode: integer);
begin
  if mode = -1 then // Toggle
    mode := integer(not AppBar.Visible );

  if mode = 0 then
    AppBar.Visible := False
  else
  begin
    AppBar.Visible := True;
    AppBar.BringToFront;
  end;
end;

procedure TsplashForm.Action1Execute(Sender: TObject);
begin
  AppBarShow(-1);
end;

procedure TsplashForm.CloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TsplashForm.FormCreate(Sender: TObject);
var
  Start : Double;
  Duration : Double;
begin

end;

procedure TsplashForm.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  AppBarShow(0);
end;

procedure TsplashForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    AppBarShow(-1)
  else
    AppBarShow(0);
end;

procedure TsplashForm.FormResize(Sender: TObject);
begin
  AppBarResize;
end;

procedure TsplashForm.Timer1Timer(Sender: TObject);
begin
  splashForm.Hide;
  loginForm.Show;
  Timer1.Destroy;
end;

end.
