unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, DB, DBGrids;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
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
  Form3: TForm3;
  a: string;

implementation

uses Unit4, Unit10;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  DataModule4.Zkategori.ExecSQL;

  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('select * from kategori');
  DataModule4.Zkategori.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  DataModule4.Zkategori.ExecSQL;

  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('select * from kategori');
  DataModule4.Zkategori.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('delete from kategori where id= '+a);
  DataModule4.Zkategori.ExecSQL;

  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('select * from kategori');
  DataModule4.Zkategori.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zkategori.Fields[1].AsString;
  a:= DataModule4.Zkategori.Fields[0].AsString;
end;

end.
