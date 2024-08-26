page 50107 ContainerHeader
{
    ApplicationArea = All;
    Caption = 'Container Details';
    PageType = Document;
    SourceTable = "Purchase Header";
    Editable = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Vendor Shipment No."; Rec."Vendor Shipment No.")
                {
                    ToolTip = 'Specifies the vendor''s shipment number. It is inserted in the corresponding field on the source document during posting.';
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ToolTip = 'Specifies the name of the vendor who delivers the products.';
                }
            }

            part(containerData; ContainerData)
            {
                ApplicationArea = All;
                SubPageLink = ContainerNumber = field("Vendor Shipment No.");
            }
        }
    }

}
