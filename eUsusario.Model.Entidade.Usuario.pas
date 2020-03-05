unit eUsusario.Model.Entidade.Usuario;

interface

uses
  eUsusario.View.Conexao.Interfaces, Data.DB;
Type
TModelEntidadeUsuario = class(TInterfacedObject, iEntidade)
  private
    FQuery : iQuery;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iEntidade;
    function Listar(Value : TDataSource) : iEntidade;
    procedure Open;
end;

implementation

uses
  eUsusario.Controller.Factory.Query, System.SysUtils;

{ TModelEntidadeUsuario }

constructor TModelEntidadeUsuario.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(Nil);
end;

destructor TModelEntidadeUsuario.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelEntidadeUsuario.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM CLIENTES');
  Value.DataSet := FQuery.DataSet;
end;

class function TModelEntidadeUsuario.New: iEntidade;
begin
  Result := Self.Create;
end;

procedure TModelEntidadeUsuario.Open;
begin
  FQuery.Open('SELECT * FROM PRODUTO');
end;

end.
