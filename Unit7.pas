unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
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
  Form7: TForm7;

implementation

uses Unit4, Unit3;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
  Form4.Zkustomer.SQL.Clear;
  Form4.Zkustomer.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  Form4.Zkustomer.ExecSQL;

  Form4.Zkustomer.SQL.Clear;
  Form4.Zkustomer.SQL.Add('select * from kategori');
  Form4.Zkustomer.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  Form4.Zkustomer.SQL.Clear;
  Form4.Zkustomer.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  Form4.Zkustomer.ExecSQL;

  Form4.Zkustomer.SQL.Clear;
  Form4.Zkustomer.SQL.Add('select * from kategori');
  Form4.Zkustomer.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  Form4.Zkustomer.SQL.Clear;
  Form4.Zkustomer.SQL.Add('delete from kategori where id= '+a);
  Form4.Zkustomer.ExecSQL;

  Form4.Zkustomer.SQL.Clear;
  Form4.Zkustomer.SQL.Add('select * from kategori');
  Form4.Zkustomer.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zkustomer.Field[1].AsString;
  a:= DataModule4.Zkustomer.Field[0].AsString;
end;

end.
