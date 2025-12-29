table 80121 "CP Return Request"
{
    Caption = 'Customer Portal Return Request';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Shipment No."; Code[20])
        {
            Caption = 'Shipment No.';
        }
        field(3; "Lines Json"; Text[2048])
        {
            Caption = 'Lines Json';
        }
        field(4; "Return Order No."; Code[20])
        {
            Caption = 'Return Order No.';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
