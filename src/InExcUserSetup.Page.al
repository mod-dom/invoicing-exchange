page 50100 "InExc User Setup"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "InExc User Setup";
    Caption = 'Electronic Invoice Exchange User Setup';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field("Service Code"; "Service Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Unique service code for setup.';
                }
                field("User ID"; "User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Unique user ID.';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';
                }
                field("User Name"; "User Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description field for defining user name that you will be used for web service on URL Endpoint field in Service Setup table';
                }
                field("User Password"; "User Password")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description field for defining user password that you will be used for web service on URL Endpoint field in Service Setup table';
                }
                field("User Name Sandbox"; "User Name Sandbox")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description field for defining Sandbox user name that you will be used for web service on URL Endpoint Sandbox field in Service Setup table';
                }
                field("User Sandbox Password"; "User Sandbox Password")
                {
                    ApplicationArea = All;
                    ToolTip = 'Description field for defining Sandbox user password that you will be used for web service on URL Endpoint Sandbox field in Service Setup table';
                }
                field(Inactive; Inactive)
                {
                    ApplicationArea = All;
                    ToolTip = 'In some reason user is in inactive status and we cannot used in sending web request to URL, but we do not want to delete it from our setup.';
                }
                field("Enable/Disable Sandbox User"; "Enable/Disable Sandbox User")
                {
                    ApplicationArea = All;
                    ToolTip = 'Enable/Disable Sandbox User';
                }
            }
        }
    }
}