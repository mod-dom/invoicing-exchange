codeunit 50100 "InExc User Setup Mgt"
{
    [EventSubscriber(ObjectType::Table, Database::"User Setup", 'OnAfterDeleteEvent', '', false, false)]
    local procedure OnAfterDeleteEventDeleteRelatedRecordsInExcUserSetup(Rec: Record "User Setup")
    begin
        DeleteRelatedRecordsInExcUserSetup(Rec);
    end;

    local procedure DeleteRelatedRecordsInExcUserSetup(Rec: Record "User Setup")
    var
        InExcUserSetup: Record "InExc User Setup";
    begin
        InExcUserSetup.SetRange("User ID", Rec."User ID");
        if InExcUserSetup.FindSet() then begin
            repeat
                InExcUserSetup.Delete();
            until InExcUserSetup.Next() = 0;
        end;
    end;
}