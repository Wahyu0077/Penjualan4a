object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 722
  Top = 156
  Height = 218
  Width = 472
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\acer\Documents\VISUAL2 Delphi\libmysql.dll'
    Left = 24
    Top = 25
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Properties.Strings = (
      'Zkategori.Connection := ZConnection1;'
      'Zkategori.SQL.Text := '#39'SELECT * FROM tablename'#39';'
      'Zkategori.Active := True;')
    Left = 96
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 96
    Top = 88
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 152
    Top = 24
  end
  object Zuser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from user')
    Params = <>
    Left = 200
    Top = 24
  end
  object Zsupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from supplier')
    Params = <>
    Left = 248
    Top = 24
  end
  object Zbarang: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM barang')
    Params = <>
    Left = 296
    Top = 24
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 152
    Top = 88
  end
  object dsuser: TDataSource
    DataSet = Zuser
    Left = 200
    Top = 88
  end
  object dssupplier: TDataSource
    DataSet = Zsupplier
    Left = 248
    Top = 88
  end
  object dsbarang: TDataSource
    DataSet = Zbarang
    Left = 296
    Top = 88
  end
  object Zkustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * From kustomer')
    Params = <>
    Left = 352
    Top = 24
  end
  object dskustomer: TDataSource
    DataSet = Zkustomer
    Left = 352
    Top = 88
  end
end
