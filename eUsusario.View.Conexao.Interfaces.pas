unit eUsusario.View.Conexao.Interfaces;

interface

uses
  Data.DB;
Type
 iConexao = interface
   ['{C274FEBB-916D-43DB-BF6E-790E3622270E}']
   function Connection : TCustomConnection;
 end;

 iQuery = interface
 ['{733D3424-1A9A-4948-ADC6-6CEA4B6F4B7C}']
 function SQL(Value : String) : iQuery;
 function DataSet : TDataSet;
 end;

 iEntidade = interface
   ['{832976AC-317B-4656-8A19-F771D6D5C1E2}']
   function Listar(Value : TDataSource) : iEntidade;
 end;


implementation

end.
