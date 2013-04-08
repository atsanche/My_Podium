unit Home_Screen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr;

type
  ThomeForm = class(TForm)
    AppBar: TPanel;
    CloseButton: TImage;
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    logoImage: TImage;
    manBookmarks: TButton;
    custApprearance: TButton;
    newPresentation: TButton;
    loadPresentation: TButton;
    themeList: TListBox;
    presList: TListBox;
    logOut: TButton;
    sidePanel: TPanel;
    logoPanel: TPanel;
    mainPanel: TPanel;
    newpresPanel: TPanel;
    OpenDialog1: TOpenDialog;
    pNameLabel: TLabel;
    locationLabel: TLabel;
    themeLabel: TLabel;
    pNameEdit: TEdit;
    locationEdit: TEdit;
    browseFile: TButton;
    themeCombo: TComboBox;
    content: TPanel;
    newPresAccept: TImage;
    newPresClose: TImage;
    templatePanel: TPanel;
    appearanceMainLabel: TLabel;
    Label2: TLabel;
    bgroundcolorLabel: TLabel;
    fontLabel: TLabel;
    fontsizeLabel: TLabel;
    appearanceBrowse: TButton;
    bgroundcolorComboBox: TComboBox;
    fontComboBox: TComboBox;
    fontsizeComboBox: TComboBox;
    customAcceptButton: TImage;
    customCloseButton: TImage;
    bookmarkPanel: TPanel;
    bookmarkManagerMainLabel: TLabel;
    bMarkAcceptButton: TImage;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure CloseButtonClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure logOutClick(Sender: TObject);
    procedure newPresentationClick(Sender: TObject);
    procedure closePanelClick(Sender: TObject);
    procedure custApprearanceClick(Sender: TObject);
    procedure customAcceptButtonClick(Sender: TObject);
    procedure customCloseButtonClick(Sender: TObject);
    procedure manBookmarksClick(Sender: TObject);
    procedure bMarkCloseButtonClick(Sender: TObject);
    procedure loadPresentationClick(Sender: TObject);
    procedure newPresAcceptClick(Sender: TObject);
    procedure newPresCloseClick(Sender: TObject);
  private
    { Private declarations }
    procedure AppBarResize;
    procedure AppBarShow(mode: integer);
  public
    { Public declarations }
  end;

var
  homeForm: ThomeForm;

implementation

{$R *.dfm}
uses
  Login_Screen;
const
  AppBarHeight = 75;

procedure ThomeForm.AppBarResize;
begin
  AppBar.SetBounds(0, AppBar.Parent.Height - AppBarHeight,
    AppBar.Parent.Width, AppBarHeight);
end;

procedure ThomeForm.AppBarShow(mode: integer);
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



procedure ThomeForm.Action1Execute(Sender: TObject);
begin
  AppBarShow(-1);
end;

procedure ThomeForm.CloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure ThomeForm.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  AppBarShow(0);
end;

procedure ThomeForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    AppBarShow(-1)
  else
    AppBarShow(0);
end;

procedure ThomeForm.FormResize(Sender: TObject);
begin
  AppBarResize;
end;





procedure ThomeForm.bMarkCloseButtonClick(Sender: TObject);
begin
  mainPanel.Visible := true;
  bookmarkPanel.Visible := false;
end;

procedure ThomeForm.closePanelClick(Sender: TObject);
begin
  //CLOSE NEW PRESENTAION PANEL AND OPENS MAIN PANEL
  newpresPanel.Visible := false;
  mainPanel.Visible := true;
end;

procedure ThomeForm.custApprearanceClick(Sender: TObject);
begin
  mainPanel.Visible := false;
  templatePanel.Visible := true;
end;

procedure ThomeForm.customAcceptButtonClick(Sender: TObject);
begin
  templatePanel.Visible := false;
  mainPanel.Visible := true;
end;

procedure ThomeForm.customCloseButtonClick(Sender: TObject);
begin
  templatePanel.Visible := false;
  mainPanel.Visible := true;
end;

procedure ThomeForm.loadPresentationClick(Sender: TObject);
begin
  //OPEN A FILE DIALOG IN THE FOLDER WE ARE GOING TO LOCALLY SAVE EACH PERSONS PRESENTATIONS
end;


//STANDARD USER LOGOUT
procedure ThomeForm.logOutClick(Sender: TObject);
begin
  homeForm.Hide;
  loginForm.Show;
end;

//HIDE THE MAIN PANEL
//SHOW THE BOOKMARK MANAGER PANEL
procedure ThomeForm.manBookmarksClick(Sender: TObject);
begin
  mainPanel.Visible := false;
  bookmarkPanel.Visible := true;
end;




// WIP_
procedure ThomeForm.newPresAcceptClick(Sender: TObject);
begin
  newpresPanel.Visible := false;
  mainPanel.Visible := true;
end;




  // CLOSE THE NEW PRESENTATION PANEL AND OPEN MAIN PANEL
procedure ThomeForm.newPresCloseClick(Sender: TObject);
begin
  newpresPanel.Visible := false;
  mainPanel.Visible := true;
end;




  // OPEN THE NEW PRESENTATION PANEL

  // ENTER NEW PRESENTATION NAME - TEDIT
  // SELECT THE THEME FOR THE PRESENTATION - TCOMBOBOX
  // DEFAULT TO A CERTAIN LOCATION BUT ALLOW A DIFFERENT LOCATION SELECTION - TOPENDIALOG
procedure ThomeForm.newPresentationClick(Sender: TObject);
begin
  mainPanel.Visible := false;
  newpresPanel.Visible  := true;
end;
end.
