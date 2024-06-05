unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TKustomer = class(TForm)
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
  Kustomer: TKustomer;

implementation

uses Unit3, Unit10;

{$R *.dfm}

procedure TKustomer.btn1Click(Sender: TObject);
begin
  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  DataModule4.Zkustomer.ExecSQL;

  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('select * from kategori');
  DataModule4.Zkustomer.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TKustomer.btn2Click(Sender: TObject);
begin
  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  DataModule4.Zkustomer.ExecSQL;

  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('select * from kategori');
  DataModule4.Zkustomer.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TKustomer.btn3Click(Sender: TObject);
begin
  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('delete from kategori where id= '+a);
  DataModule4.Zkustomer.ExecSQL;

  DataModule4.Zkustomer.SQL.Clear;
  DataModule4.Zkustomer.SQL.Add('select * from kategori');
  DataModule4.Zkustomer.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TKustomer.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zkustomer.Fields[1].AsString;
  a:= DataModule4.Zkustomer.Fields[0].AsString;
end;

end.
