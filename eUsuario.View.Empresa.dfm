object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 21
    Width = 140
    Height = 13
    Caption = 'CAMINHO BANCO DE DADOS'
  end
  object Label2: TLabel
    Left = 16
    Top = 77
    Width = 57
    Height = 13
    Caption = 'USER NAME'
  end
  object Label3: TLabel
    Left = 16
    Top = 125
    Width = 33
    Height = 13
    Caption = 'SENHA'
  end
  object Edit1: TEdit
    Left = 16
    Top = 40
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 16
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 256
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 392
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
  end
  object OpenDialog1: TOpenDialog
    Left = 16
    Top = 256
  end
end
