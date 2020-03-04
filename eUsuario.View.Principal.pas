unit eUsuario.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls,Data.DB, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
   Vcl.StdCtrls, eUsusario.View.Conexao.Interfaces, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    //FbConnection: TFDConnection;
    //ClientesTable: TFDQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FUsuario : iEntidade;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  eUsusario.View.Conexao.Faredac, eUsusario.Model.Entidade.Usuario;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FUsuario.Listar(DataSource1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FUsuario := TModelEntidadeUsuario.New;
end;

end.
