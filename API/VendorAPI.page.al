page 50149 VendorDateUpdate
{
    ApplicationArea = All;
    PageType = API;
    Caption = 'VendorAPI';
    APIPublisher = 'TechnoRUCS';
    APIGroup = 'VendorPageUpdate';
    APIVersion = 'v2.0', 'v1.0';
    EntityName = 'Vendor';
    EntitySetName = 'Vendor';
    DelayedInsert = true;
    SourceTable = "Purchase Header";
    ODataKeyFields = "No.";
    InsertAllowed = true;
    ModifyAllowed = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(SNo; Rec."No.")
                {
                    Caption = 'Number';
                }
                field(Address; Rec."Buy-from Address 2")
                {
                    Caption = 'Due Date';
                }

                field(VendorNumber; Rec."Vendor Order No.")
                {
                    Caption = 'VendorNumber';
                }

                field(Duedate; rec."Due Date")
                {
                    Caption = 'Due Date';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}