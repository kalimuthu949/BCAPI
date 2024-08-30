table 60001 ContainerData
{
    Caption = 'Container Shipment Informations';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
            AutoIncrement = true;
        }
        field(2; Location; Text[100])
        {
            Caption = 'Location';
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(4; "Date"; Text[100])
        {
            Caption = 'Date';
        }
        field(5; "OrderID"; Integer)
        {
            Caption = 'OrderID';
        }
        field(6; "ContainerNumber"; Text[100])
        {
            Caption = 'ContainerNumber';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}
