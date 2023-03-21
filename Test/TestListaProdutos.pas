unit TestListaProdutos;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Vcl.Buttons, FireDAC.DApt.Intf, FireDAC.DatS, FireDAC.Stan.Def,
  FireDAC.Phys.MSSQL, FireDAC.Stan.Param, System.Classes, Vcl.ExtCtrls, ListaProdutos,
  Vcl.StdCtrls, FireDAC.Stan.Intf, Vcl.Grids, FireDAC.Stan.Error, Vcl.Graphics,
  FireDAC.Phys.Intf, FireDAC.Comp.Client, FireDAC.Comp.UI, Winapi.Windows,
  System.Variants, FireDAC.VCLUI.Wait, FireDAC.Phys, FireDAC.Stan.Pool,
  Winapi.Messages, Vcl.Dialogs, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Forms,
  System.SysUtils, Data.DB, Vcl.Controls, FireDAC.Phys.MSSQLDef, FireDAC.UI.Intf,
  FireDAC.Stan.Option, FireDAC.Comp.DataSet, Vcl.DBGrids;

type
  // Test methods for class TfrmListaProdutos

  TestTfrmListaProdutos = class(TTestCase)
  strict private
    FfrmListaProdutos: TfrmListaProdutos;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestAdicionaContador;
  end;

implementation

procedure TestTfrmListaProdutos.SetUp;
begin
  FfrmListaProdutos := TfrmListaProdutos.Create(nil);
end;

procedure TestTfrmListaProdutos.TearDown;
begin
  FfrmListaProdutos.Free;
  FfrmListaProdutos := nil;
end;

procedure TestTfrmListaProdutos.TestAdicionaContador;
var
  ReturnValue: string;
  QtdeAtual: string;
begin
  QtdeAtual := '1';

  ReturnValue := FfrmListaProdutos.AdicionaContador(QtdeAtual);
  CheckEquals(2, StrToInt(ReturnValue), 'O teste da fun��o de incrementa��o do contador falhou');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTfrmListaProdutos.Suite);
end.
