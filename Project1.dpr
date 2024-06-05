program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Kategori},
  Unit5 in 'Unit5.pas' {Satuan},
  Unit6 in 'Unit6.pas' {Supplier},
  Unit7 in 'Unit7.pas' {Kustomer},
  Unit8 in 'Unit8.pas' {User},
  Unit9 in 'Unit9.pas' {Barang},
  Unit10 in 'Unit10.pas' {DataModule4: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TKategori, Kategori);
  Application.CreateForm(TSatuan, Satuan);
  Application.CreateForm(TSupplier, Supplier);
  Application.CreateForm(TKustomer, Kustomer);
  Application.CreateForm(TUser, User);
  Application.CreateForm(TBarang, Barang);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.Run;
end.
