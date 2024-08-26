page 50104 ContainerDetailsPage
{
    ApplicationArea = All;
    Caption = 'ContainerDetailsPage';
    PageType = List;
    SourceTable = ContainerDetails;
    UsageCategory = Administration;
    SourceTableTemporary = true;
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
                    ToolTip = 'Specifies the value of the Location field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.', Comment = '%';
                }
            }
        }
    }
}
