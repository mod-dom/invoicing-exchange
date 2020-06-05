codeunit 50130 InExcElInvoiceExchange
{
    trigger OnRun()
    begin

    end;

    procedure SelectJustOneEnabled(ExchangeSetupPar: Record InExcElInvoiceExcSetup)
    var
        ExchangeSetup: Record InExcElInvoiceExcSetup;
    begin
        ExchangeSetup.Reset();
        ExchangeSetup.SetFilter("Service Code", '<>%1', ExchangeSetupPar."Service Code");
        If NOT ExchangeSetup.IsEmpty() then
            If ExchangeSetup.FindSet() then
                repeat
                    ExchangeSetup.Enabled := false;
                    ExchangeSetup.Modify();
                until ExchangeSetup.Next() = 0;
    end;

    procedure CheckEndPointEnabled(var IsEnabledEndPoint: Boolean; var IsEnabledSandboxPoint: Boolean; ExchangeSetupPar: Record InExcElInvoiceExcSetup)
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