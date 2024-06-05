unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TUser = class(TForm)
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
  User: TUser;
  a : string;

implementation

uses Unit10;

{$R *.dfm}

procedure TUser.btn1Click(Sender: TObject);
begin
  DataModule4.Zuser.SQL.Clear;
  DataModule4.Zuser.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
  DataModule4.Zuser.ExecSQL;

  DataModule4.Zuser.SQL.Clear;
  DataModule4.Zuser.SQL.Add('select * from kategori');
  DataModule4.Zuser.Open;
  ShowMessage('Data Berhasil disimpan!');
end;

procedure TUser.btn2Click(Sender: TObject);
begin
  DataModule4.Zuser.SQL.Clear;
  DataModule4.Zuser.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  DataModule4.Zuser.ExecSQL;

  DataModule4.Zuser.SQL.Clear;
  DataModule4.Zuser.SQL.Add('select * from kategori');
  DataModule4.Zuser.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TUser.btn3Click(Sender: TObject);
begin
  DataModule4.Zuser.SQL.Clear;
  DataModule4.Zuser.SQL.Add('delete from kategori where id= '+a);
  DataModule4.Zuser.ExecSQL;

  DataModule4.Zuser.SQL.Clear;
  DataModule4.Zuser.SQL.Add('select * from kategori');
  DataModule4.Zuser.Open;
  ShowMessage('Data Berhasil Didelete!');
end;

procedure TUser.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zuser.Fields[1].AsString;
  a:= DataModule4.Zuser.Fields[0].AsString;
end;

end.
