table 60000 ContainerDetails
{
    Caption = 'ContainerDetails';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; No; Code[13])
        {
            Caption = 'No';
            //AutoIncrement = true;
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
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}
