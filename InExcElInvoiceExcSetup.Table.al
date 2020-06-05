table 50130 InExcElInvoiceExcSetup
{
    DataClassification = CustomerContent;
    Caption = 'Electronic Invoice Exchange Service Setup';

    fields
    {
        field(1; "Service Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Service Code';
        }

        field(2; "Description"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';

        }

        field(3; Enabled; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Enabled';
            trigger OnValidate()
            var
                InvoiceExchange: Codeunit InExcElInvoiceExchange;
            begin
                InvoiceExchange.SelectJustOneEnabled(Rec);

            end;
        }
        field(4; Endpoint; Text[100])
        {
            DataClassification = CustomerContent;
            Description = 'Field to enter URL for Invoice Sending';
            Caption = 'Endpoint';
        }
        field(5; "Sandbox Endpoint"; Text[100])
        {
            DataClassification = CustomerContent;
            Description = 'Field to enter URL for Invoice Sending to test web service';
            Caption = 'Sandbox Endpoint';
        }

        field(6; "Enable/Disable Sandbox End."; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Enable/Disable Sandbox End.';
        }

        field(7; "Service Provider"; Text[100])
        {
            DataClassification = CustomerContent;
            Description = 'Field to enter link to the provider';
            Caption = 'Service Provider';
            ExtendedDatatype = URL;
        }

        field(8; "Terms of Use"; Text[100])
        {
            DataClassification = CustomerContent;
            Description = 'Field to enter link to the terms of use of the App';
            Caption = 'Terms of Use';
            ExtendedDatatype = URL;
        }
        field(9; "Use web Request"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Use web Request';
        }
    }

    keys
    {
        key(PK; "Service Code")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}