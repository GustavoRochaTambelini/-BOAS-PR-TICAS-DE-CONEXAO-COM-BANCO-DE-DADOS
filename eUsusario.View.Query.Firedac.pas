unit eUsusario.View.Query.Firedac;

interface

uses
  eUsusario.View.Conexao.Interfaces,Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;
Type
  TModelQueryFiredac = class(TInterfacedObject, iQuery)
    private
      FQuery :  TFDQuery;
      FParrent : iConexao;
    public
    constructor Create(Parrent : iConexao);
    destructor Destroy; override;
    class function New(Parrent : iConexao) : iQuery;
    function SQL(Value : String) : iQuery;
    function DataSet : TDataSet;
    function Open(aSQL : String) : iQuery;
  end;

implementation

uses
  System.SysUtils, eUsusario.View.Conexao.Faredac;

{ TModelQueryFiredac }

constructor TModelQueryFiredac.Create(Parrent : iConexao);
begin
  FParrent  := Parrent;
  FQuery := TFDQuery.Create(nil);

  if not Assigned(FParrent)then
    FParrent := TModelConexaoFaredac.New;

  FQuery.Connection := TFDConnection(FParrent.Connection);
end;

function TModelQueryFiredac.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TModelQueryFiredac.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TModelQueryFiredac.New(Parrent : iConexao): iQuery;
begin
  Result := Self.Create(Parrent);
end;


function TModelQueryFiredac.Open(aSQL : String) : iQuery;
begin
  Result := Self;
  FQuery.Open(aSQL);
end;

function TModelQueryFiredac.SQL(Value: String): iQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(Value);
  FQuery.Active := True;
end;

end.
