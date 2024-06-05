unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TBarang = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edt2: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Barang: TBarang;
  a : string;

implementation

uses Unit10;

{$R *.dfm}

procedure TBarang.btn1Click(Sender: TObject);
begin
  DataModule4.Zbarang.SQL.Clear;
  DataModule4.Zbarang.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  DataModule4.Zbarang.ExecSQL;

  DataModule4.Zbarang.SQL.Clear;
  DataModule4.Zbarang.SQL.Add('select * from kategori');
  DataModule4.Zbarang.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TBarang.btn2Click(Sender: TObject);
begin
  DataModule4.Zbarang.SQL.Clear;
  DataModule4.Zbarang.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  DataModule4.Zbarang.ExecSQL;

  DataModule4.Zbarang.SQL.Clear;
  DataModule4.Zbarang.SQL.Add('select * from kategori');
  DataModule4.Zbarang.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TBarang.btn3Click(Sender: TObject);
begin
  DataModule4.Zbarang.SQL.Clear;
  DataModule4.Zbarang.SQL.Add('delete from kategori where id= '+a);
  DataModule4.Zbarang.ExecSQL;

  DataModule4.Zbarang.SQL.Clear;
  DataModule4.Zbarang.SQL.Add('select * from kategori');
  DataModule4.Zbarang.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TBarang.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zbarang.Fields[1].AsString;
  a:= DataModule4.Zbarang.Fields[0].AsString;
end;

end.
