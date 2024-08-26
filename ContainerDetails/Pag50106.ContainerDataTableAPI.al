page 50106 ContainerDataTableAPI
{
    APIGroup = 'apiGroup';
    APIPublisher = 'ContainerData';
    APIVersion = 'v2.0', 'v1.0';
    ApplicationArea = All;
    Caption = 'ContainerDataTableAPI';
    DelayedInsert = true;
    EntityName = 'ContainerData';
    EntitySetName = 'ContainerData';
    PageType = API;
    SourceTable = ContainerData;
    //ODataKeyFields = No;
    InsertAllowed = true;
    ModifyAllowed = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("date"; Rec."Date")
                {
                    Caption = 'Date';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(location; Rec.Location)
                {
                    Caption = 'Location';
                }
                field(No; Rec.No)
                {
                    Caption = 'No';
                }
                field(orderID; Rec.OrderID)
                {
                    Caption = 'OrderID';
                }
                field(ContainerNumber; Rec.ContainerNumber)
                {
                    Caption = 'OrderID';
                }
            }
        }
    }
}
