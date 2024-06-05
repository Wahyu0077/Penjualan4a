unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
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
  Form9: TForm9;
  a : string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
  Form4.Zbarang.SQL.Clear;
  Form4.Zbarang.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  Form4.Zbarang.ExecSQL;

  Form4.Zbarang.SQL.Clear;
  Form4.Zbarang.SQL.Add('select * from kategori');
  Form4.Zbarang.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  Form4.Zbarang.SQL.Clear;
  Form4.Zbarang.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  Form4.Zbarang.ExecSQL;

  Form4.Zbarang.SQL.Clear;
  Form4.Zbarang.SQL.Add('select * from kategori');
  Form4.Zbarang.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  Form4.Zbarang.SQL.Clear;
  Form4.Zbarang.SQL.Add('delete from kategori where id= '+a);
  Form4.Zbarang.ExecSQL;

  Form4.Zbarang.SQL.Clear;
  Form4.Zbarang.SQL.Add('select * from kategori');
  Form4.Zbarang.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zbarang.Field[1].AsString;
  a:= DataModule4.Zbarang.Field[0].AsString;
end;

end.
