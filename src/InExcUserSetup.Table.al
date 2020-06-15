table 50100 "InExc User Setup"
{
    DataClassification = CustomerContent;
    Caption = 'Electronic Invoice Exchange User Setup';

    fields
    {
        field(1; "Service Code"; Code[20])
        {
            TableRelation = "InExc Service Setup"."Service Code";
            DataClassification = CustomerContent;
            Caption = 'Service Code';
        }
        field(2; "User ID"; Code[50])
        {
            TableRelation = "User Setup"."User ID";
            DataClassification = CustomerContent;
            Caption = 'User ID';
        }
        field(3; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(4; "User Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'User Name';
        }
        field(5; "User Password"; Text[50])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = Masked;
            Caption = 'Password';
        }
        field(6; "User Name Sandbox"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'User Name Sandbox';
        }
        field(7; "User Sandbox Password"; Text[50])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = Masked;
            Caption = 'Sandbox Password';
        }
        field(8; Inactive; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Inactive';
        }
        field(9; "Enable/Disable Sandbox User"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Enable/Disable Sandbox User.';
        }

    }

    keys
    {
        key(PK; "Service Code", "User ID")
        {
            Clustered = true;
        }
    }
}