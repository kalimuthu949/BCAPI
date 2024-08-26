page 50105 ContainerData
{
    ApplicationArea = All;
    Caption = 'Tracking Information';
    PageType = ListPart;
    SourceTable = ContainerData;
    UsageCategory = Administration;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                // field(No; Rec.No)
                // {
                //     ToolTip = 'Specifies the value of the No field.', Comment = '%';
                // }
                field(Location; Rec.Location)
                {
                    ToolTip = 'Location';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Description';
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Date';
                }
                // field(ContainerNumber; Rec.ContainerNumber)
                // {
                //     ToolTip = 'Container number';
                // }
                // field(OrderID; Rec.OrderID)
                // {
                //     ToolTip = 'Order ID';
                // }
            }
        }
    }
}
