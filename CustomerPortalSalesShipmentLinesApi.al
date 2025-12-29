page 80108 "CP SalesShipmentLines API"
{
    PageType = API;
    Caption = 'Customer Portal Sales Shipment Lines';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'salesShipmentLine';
    EntitySetName = 'salesShipmentLines';
    SourceTable = "Sales Shipment Line";
    ODataKeyFields = SystemId;
    DataAccessIntent = ReadOnly;
    DelayedInsert = true;
    Editable = false;
    Extensible = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    ApplicationArea = All;
                }
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                    ApplicationArea = All;
                }
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                    ApplicationArea = All;
                }
                field(type; Rec.Type)
                {
                    Caption = 'Type';
                    ApplicationArea = All;
                }
                field(itemNo; Rec."No.")
                {
                    Caption = 'Item No.';
                    ApplicationArea = All;
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                    ApplicationArea = All;
                }
                field(quantityInvoiced; Rec."Quantity Invoiced")
                {
                    Caption = 'Quantity Invoiced';
                    ApplicationArea = All;
                }
                field(unitOfMeasure; Rec."Unit of Measure")
                {
                    Caption = 'Unit of Measure';
                    ApplicationArea = All;
                }
            }
        }
    }
}
