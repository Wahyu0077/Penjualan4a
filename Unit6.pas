unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TSupplier = class(TForm)
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
  Supplier: TSupplier;
  a : string;

implementation

uses Unit10;

{$R *.dfm}

procedure TSupplier.btn1Click(Sender: TObject);
begin
  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('insert into kategori values(null, "' + edt1.Text + '")');
  DataModule4.Zsupplier.ExecSQL;

  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('select * from kategori');
  DataModule4.Zsupplier.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TSupplier.btn2Click(Sender: TObject);
begin
  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  DataModule4.Zsupplier.ExecSQL;

  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('select * from kategori');
  DataModule4.Zsupplier.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TSupplier.btn3Click(Sender: TObject);
begin
  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('delete from kategori where id= '+a);
  DataModule4.Zsupplier.ExecSQL;

  DataModule4.Zsupplier.SQL.Clear;
  DataModule4.Zsupplier.SQL.Add('select * from kategori');
  DataModule4.Zsupplier.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TSupplier.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zsupplier.Fields[1].AsString;
  a:= DataModule4.Zsupplier.Fields[0].AsString;
end;

end.
