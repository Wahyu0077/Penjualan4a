object Kategori: TKategori
  Left = 192
  Top = 180
  Width = 767
  Height = 470
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 64
    Width = 39
    Height = 18
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 104
    Top = 312
    Width = 120
    Height = 18
    Caption = 'MASUKKAN NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 168
    Top = 64
    Width = 281
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 168
    Top = 104
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 104
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 344
    Top = 104
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 104
    Top = 144
    Width = 401
    Height = 137
    DataSource = DataModule4.dskategori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 240
    Top = 312
    Width = 177
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 432
    Top = 312
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
