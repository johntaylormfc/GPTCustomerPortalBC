tableextension 80120 "CP Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(80120; "Outstanding Quantity"; Decimal)
        {
            Caption = 'Outstanding Quantity';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = Sum("Sales Line"."Outstanding Quantity" WHERE("Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.")));
        }
    }
}
