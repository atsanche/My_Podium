object CreateSlideForm: TCreateSlideForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Create Slide'
  ClientHeight = 813
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 25
  object imagedisplay: TImage
    Left = 463
    Top = 72
    Width = 452
    Height = 305
    AutoSize = True
    DragCursor = crSizeAll
  end
  object titlelabel: TLabel
    AlignWithMargins = True
    Left = 551
    Top = 27
    Width = 78
    Height = 25
    Alignment = taCenter
    Caption = 'Title Here'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 813
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 32
      Top = 9
      Width = 81
      Height = 25
      Align = alCustom
      Caption = 'Enter Title'
    end
    object Label1: TLabel
      Left = 31
      Top = 217
      Width = 136
      Height = 25
      Caption = 'Enter Bullet Point'
    end
    object label33: TLabel
      Left = 13
      Top = 251
      Width = 12
      Height = 25
      Caption = '1)'
    end
    object Label3: TLabel
      Left = 13
      Top = 290
      Width = 15
      Height = 25
      Caption = '2)'
    end
    object Label4: TLabel
      Left = 13
      Top = 368
      Width = 15
      Height = 25
      Caption = '4)'
    end
    object Label5: TLabel
      Left = 13
      Top = 329
      Width = 15
      Height = 25
      Caption = '3)'
    end
    object Label6: TLabel
      Left = 13
      Top = 407
      Width = 15
      Height = 25
      Caption = '5)'
    end
    object saveTitle: TButton
      Left = 32
      Top = 75
      Width = 49
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = saveTitleClick
    end
    object titleEdit: TEdit
      Left = 32
      Top = 36
      Width = 161
      Height = 33
      TabOrder = 1
    end
    object selectPicture: TButton
      Left = 32
      Top = 184
      Width = 161
      Height = 25
      Caption = 'Select Picture'
      TabOrder = 2
      OnClick = selectPictureClick
    end
    object saveSlide: TButton
      Left = 13
      Top = 760
      Width = 93
      Height = 25
      Caption = 'Save Slide'
      TabOrder = 3
    end
    object Button1: TButton
      Left = 185
      Top = 760
      Width = 16
      Height = 25
      Caption = 'X'
      TabOrder = 4
      OnClick = Button1Click
    end
    object SelectFont: TButton
      Left = 32
      Top = 122
      Width = 161
      Height = 25
      Caption = 'Select Title Font'
      TabOrder = 5
      OnClick = SelectFontClick
    end
    object SelectColor: TButton
      Left = 32
      Top = 153
      Width = 161
      Height = 25
      Caption = 'Select Slide Color'
      TabOrder = 6
      OnClick = SelectColorClick
    end
    object Button3: TButton
      Left = 31
      Top = 486
      Width = 161
      Height = 25
      Caption = 'Select Bullet Font'
      TabOrder = 7
      OnClick = Button3Click
    end
    object bullet1edit: TEdit
      Left = 31
      Top = 248
      Width = 162
      Height = 33
      TabOrder = 8
    end
    object SaveBullets: TButton
      Left = 31
      Top = 443
      Width = 50
      Height = 25
      Caption = 'Save'
      TabOrder = 9
      OnClick = SaveBulletsClick
    end
    object bullet2edit: TEdit
      Left = 31
      Top = 287
      Width = 162
      Height = 33
      TabOrder = 10
    end
    object bullet3edit: TEdit
      Left = 31
      Top = 326
      Width = 162
      Height = 33
      TabOrder = 11
    end
    object bullet4edit: TEdit
      Left = 32
      Top = 365
      Width = 161
      Height = 33
      TabOrder = 12
    end
    object bullet5edit: TEdit
      Left = 31
      Top = 404
      Width = 162
      Height = 33
      TabOrder = 13
    end
  end
  object Bulletpanel: TPanel
    Left = 247
    Top = 72
    Width = 56
    Height = 255
    AutoSize = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Bullet1: TLabel
      Left = 2
      Top = 1
      Width = 51
      Height = 25
      Caption = 'Bullet1'
    end
    object Bullet2: TLabel
      Left = 1
      Top = 61
      Width = 54
      Height = 25
      Caption = 'Bullet2'
    end
    object Bullet3: TLabel
      Left = 1
      Top = 121
      Width = 54
      Height = 25
      Caption = 'Bullet3'
    end
    object Bullet4: TLabel
      Left = 1
      Top = 173
      Width = 54
      Height = 25
      Caption = 'Bullet4'
    end
    object Bullet5: TLabel
      Left = 1
      Top = 229
      Width = 54
      Height = 25
      Caption = 'Bullet5'
    end
  end
  object OpenPic: TOpenPictureDialog
    Left = 760
    Top = 232
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 824
    Top = 240
  end
  object ColorDialog1: TColorDialog
    Left = 688
    Top = 240
  end
  object FontDialog2: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 536
    Top = 256
  end
end
