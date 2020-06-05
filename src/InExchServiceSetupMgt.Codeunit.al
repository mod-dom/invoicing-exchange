codeunit 50130 "InExch Service Setup Mgt"
{
    trigger OnRun()
    begin

    end;

    procedure SelectJustOneEnabled(ExchangeSetupPar: Record "InExch Service Setup")
    var
        ExchangeSetup: Record "InExch Service Setup";
    begin
        if ExchangeSetupPar.Enabled then begin
            ExchangeSetup.SetFilter("Service Code", '<>%1', ExchangeSetupPar."Service Code");
            If NOT ExchangeSetup.IsEmpty() then
                ExchangeSetup.ModifyAll(Enabled, false, false);
        end;
    end;

    procedure CheckEndPointEnabled(var IsEnabledEndPoint: Boolean; var IsEnabledSandboxPoint: Boolean; ExchangeSetupPar: Record "InExch Service Setup")
    begin
        if ExchangeSetupPar."Enable/Disable Sandbox End." then begin
            IsEnabledEndPoint := false;
            IsEnabledSandboxPoint := true;
        end else begin
            IsEnabledEndPoint := true;
            IsEnabledSandboxPoint := false;
        end;
    end;
}