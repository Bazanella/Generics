object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 444
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 94
    Width = 336
    Height = 18
    Caption = 
      '                                                                ' +
      '                    '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 16
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Mostra valor'
    TabOrder = 0
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 8
    Width = 336
    Height = 49
    Caption = 'RadioGroup1'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'TForm'
      'TButton'
      'Integer')
    TabOrder = 1
  end
end
