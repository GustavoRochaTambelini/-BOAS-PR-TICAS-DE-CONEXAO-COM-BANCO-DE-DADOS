unit eUsusario.Controller.Factory.Interfaces;

interface

uses
  eUsusario.View.Conexao.Interfaces;
type

iFactoryQuery = interface
  ['{68BB9C5F-2C8B-410B-9275-C860DB1ACBBE}']
  function Query(Connection : iConexao) : iQuery;
end;

implementation

end.
