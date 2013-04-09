unit mypodiumslide;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Menus, Vcl.ComCtrls;

type
  TCreateSlideForm = class(TForm)
    imagedisplay: TImage;
    OpenPic: TOpenPictureDialog;
    selectPicture: TButton;
    Button1: TButton;
    titleEdit: TEdit;
    saveSlide: TButton;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    Panel1: TPanel;
    Label2: TLabel;
    saveTitle: TButton;
    SelectFont: TButton;
    SelectColor: TButton;
    titlelabel: TLabel;
    FontDialog2: TFontDialog;
    Button3: TButton;
    Bulletpanel: TPanel;
    Bullet1: TLabel;
    Bullet2: TLabel;
    Bullet3: TLabel;
    Bullet4: TLabel;
    Bullet5: TLabel;
    bullet1edit: TEdit;
    Label1: TLabel;
    SaveBullets: TButton;
    bullet2edit: TEdit;
    bullet3edit: TEdit;
    bullet4edit: TEdit;
    bullet5edit: TEdit;
    label33: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure selectPictureClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure saveTitleClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SelectFontClick(Sender: TObject);
    procedure SelectColorClick(Sender: TObject);
    procedure SaveBulletsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreateSlideForm: TCreateSlideForm;
  picname : string;
  {$LongStrings On}
  notes : string;


implementation

{$R *.dfm}

procedure TCreateSlideForm.saveTitleClick(Sender: TObject);
begin
  titlelabel.Caption := titleedit.Text;
end;

procedure TCreateSlideForm.SelectColorClick(Sender: TObject);
begin
    with colordialog1 do
    if execute then
      createslideform.Color:=color;
end;

procedure TCreateSlideForm.SelectFontClick(Sender: TObject);
begin
   with FontDialog1 do
      if execute then
        titlelabel.Font:=font;
end;

procedure TCreateSlideForm.selectPictureClick(Sender: TObject);
begin
if openpic.Execute then
begin
  imagedisplay.Picture.LoadFromFile(openpic.FileName);
end;

end;

procedure TCreateSlideForm.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TCreateSlideForm.SaveBulletsClick(Sender: TObject);
begin
    bullet1.Caption := bullet1edit.Text;
    bullet2.Caption := bullet2edit.Text;
    bullet3.Caption := bullet3edit.Text;
    bullet4.Caption := bullet4edit.Text;
    bullet5.Caption := bullet5edit.Text;
end;

procedure TCreateSlideForm.Button3Click(Sender: TObject);
begin
    with FontDialog2 do
      if execute then
        bulletpanel.Font:=font;
end;

end.
