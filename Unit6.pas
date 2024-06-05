unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
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
  Form6: TForm6;
  a : string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
  Form4.Zsupplier.SQL.Clear;
  Form4.Zsupplier.SQL.Add('insert into kategori values(null, "' + edt1.Text + '")');
  Form4.Zsupplier.ExecSQL;

  Form4.Zsupplier.SQL.Clear;
  Form4.Zsupplier.SQL.Add('select * from kategori');
  Form4.Zsupplier.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  Form4.Zsupplier.SQL.Clear;
  Form4.Zsupplier.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  Form4.Zsupplier.ExecSQL;

  Form4.Zsupplier.SQL.Clear;
  Form4.Zsupplier.SQL.Add('select * from kategori');
  Form4.Zsupplier.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  Form4.Zsupplier.SQL.Clear;
  Form4.Zsupplier.SQL.Add('delete from kategori where id= '+a);
  Form4.Zsupplier.ExecSQL;

  Form4.Zsupplier.SQL.Clear;
  Form4.Zsupplier.SQL.Add('select * from kategori');
  Form4.Zsupplier.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zsupplier.Field[1].AsString;
  a:= DataModule4.Zsupplier.Field[0].AsString;
end;

end.
