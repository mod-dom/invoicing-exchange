page 50130 InExcElInvoiceExcSetup
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = InExcElInvoiceExcSetup;
    Caption = 'Electronic Invoice Exchange Service Setup';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Service Code";
                "Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Unique Code for Setup';
                }
                field(Description; "Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Setup Description';
                }
                field(Enabled; "Enabled")
                {
                    ApplicationArea = All;
                    ToolTip = 'Service Enabled to Provide';
                }
                field(Endpoint; "Endpoint")
                {
                    ApplicationArea = All;
                    ToolTip = 'URL For Sending Invoices';
                    Enabled = IsEnabledEndPoint;

                }
                field("Sandbox Endpoint"; "Sandbox Endpoint")
                {
                    ApplicationArea = All;
                    ToolTip = 'URL For Sending Invoices to Test Web Service';
                    Enabled = IsEnabledSandBoxEndPoint;
                }
                field("Enable/Disable Sandbox End."; "Enable/Disable Sandbox End.")
                {
                    ApplicationArea = All;
                    ToolTip = 'If Enabled then Update Enable/Disable Sandbox User';
                    trigger OnValidate()
                    begin
                        InvoiceExchange.CheckEndPointEnabled(IsEnabledEndPoint, IsEnabledSandBoxEndPoint, Rec);
                    end;
                }
                field("Service Provider"; "Service Provider")
                {
                    ApplicationArea = All;
                    ToolTip = 'Field to enter link to the provider';
                }
                field("Terms of Use"; "Terms of Use")
                {
                    ApplicationArea = All;
                    ToolTip = 'Field to enter link to the terms of use of the App';
                }
                field("Use web Request"; "Use web Request")
                {
                    ApplicationArea = All;
                    ToolTip = 'If Enabled, then Web Request can be used';
                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        InvoiceExchange.CheckEndPointEnabled(IsEnabledEndPoint, IsEnabledSandBoxEndPoint, Rec);
    end;

    var
        InvoiceExchange: Codeunit InExcElInvoiceExchange;
        IsEnabledEndPoint: Boolean;
        IsEnabledSandBoxEndPoint: Boolean;

}