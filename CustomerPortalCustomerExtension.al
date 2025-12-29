tableextension 80114 "CP Customer Ext" extends Customer
{
    fields
    {
        field(80100; "Portal Password"; Text[50])
        {
            Caption = 'Portal Password';
            DataClassification = CustomerContent;
        }
    }
}

pageextension 80115 "CP Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Portal Password"; Rec."Portal Password")
            {
                ApplicationArea = All;
                ToolTip = 'Password for the customer portal (proof of concept, stored in plain text).';
            }
        }
    }
}
