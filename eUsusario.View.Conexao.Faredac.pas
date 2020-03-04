unit eUsusario.View.Conexao.Faredac;

interface

uses
  eUsusario.View.Conexao.Interfaces, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;
Type
  TModelConexaoFaredac = class (TInterfacedObject, iConexao)
    private
      FConexao: TFDConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexao;
      function Connection : TCustomConnection;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoFaredac }

function TModelConexaoFaredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TModelConexaoFaredac.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FConexao.DriverName := 'FB';
  FConexao.Params.Database := 'D:\SoNotasNFe\Dados\ACCESS_PRINT\SoNotasNFe.FDB';
  FConexao.Params.UserName := 'SYSDBA';
  FConexao.Params.Password := 'masterkey';
  FConexao.Connected := True;
end;

destructor TModelConexaoFaredac.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TModelConexaoFaredac.New: iConexao;
begin
  Result := Self.Create;
end;

end.
