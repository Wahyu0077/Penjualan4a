unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation

uses
  Unit1, Unit2, Unit3, Unit4, Unit10;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  DataModule4.Zsatuan.SQL.Clear;
  DataModule4.Zsatuan.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  DataModule4.Zsatuan.ExecSQL;

  DataModule4.Zsatuan.SQL.Clear;
  DataModule4.Zsatuan.SQL.Add('select * from kategori');
  DataModule4.Zsatuan.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  DataModule4.Zsatuan.SQL.Clear;
  DataModule4.Zsatuan.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  DataModule4.Zsatuan.ExecSQL;

  Form4.Zsatuan.SQL.Clear;
  Form4.Zsatuan.SQL.Add('select * from kategori');
  Form4.Zsatuan.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
  Form4.Zsatuan.SQL.Clear;
  Form4.Zsatuan.SQL.Add('delete from kategori where id= '+a);
  Form4.Zsatuan.ExecSQL;

  Form4.Zsatuan.SQL.Clear;
  Form4.Zsatuan.SQL.Add('select * from kategori');
  Form4.Zsatuan.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zsatuan.Field[1].AsString;
  a:= DataModule4.Zsatuan.Field[0].AsString;
end;

end.
