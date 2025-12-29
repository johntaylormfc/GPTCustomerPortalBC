page 80107 "CP SalesShipments API"
{
    PageType = API;
    Caption = 'Customer Portal Sales Shipments';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'salesShipment';
    EntitySetName = 'salesShipments';
    SourceTable = "Sales Shipment Header";
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
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                    ApplicationArea = All;
                }
                field(customerNo; Rec."Sell-to Customer No.")
                {
                    Caption = 'Customer No.';
                    ApplicationArea = All;
                }
                field(customerName; Rec."Sell-to Customer Name")
                {
                    Caption = 'Customer Name';
                    ApplicationArea = All;
                }
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                    ApplicationArea = All;
                }
                field(locationCode; Rec."Location Code")
                {
                    Caption = 'Location Code';
                    ApplicationArea = All;
                }
                field(externalDocumentNo; Rec."External Document No.")
                {
                    Caption = 'External Document No.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
