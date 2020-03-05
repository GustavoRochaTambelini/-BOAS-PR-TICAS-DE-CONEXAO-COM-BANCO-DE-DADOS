unit eUsusario.Model.Entidade.Empresa;

interface

uses
  eUsusario.View.Conexao.Interfaces, Data.DB;
Type
TModelEntidadeEmpresa = class(TInterfacedObject, iEntidade)
  private
    FQuery : iQuery;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iEntidade;
    function Listar(Value : TDataSource) : iEntidade;
end;

implementation

uses
  eUsusario.Controller.Factory.Query, System.SysUtils;

{ TModelEntidadeEmpresa }

constructor TModelEntidadeEmpresa.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(Nil);
end;

destructor TModelEntidadeEmpresa.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelEntidadeEmpresa.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM EMPRESA');
  Value.DataSet := FQuery.DataSet;
end;

class function TModelEntidadeEmpresa.New: iEntidade;
begin
  Result := Self.Create;
end;

end.
