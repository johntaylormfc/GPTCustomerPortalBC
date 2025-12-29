page 80118 "CP WorksOrderLines API"
{
    PageType = API;
    Caption = 'Customer Portal Works Order Lines';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'worksOrderLine';
    EntitySetName = 'worksOrderLines';
    SourceTable = "Works Order Lines TBSL";
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
                field(worksOrderNo; Rec."Works Order No.")
                {
                    Caption = 'Works Order No.';
                    ApplicationArea = All;
                }
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                    ApplicationArea = All;
                }
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                    ApplicationArea = All;
                }
                field(type; Rec.Type)
                {
                    Caption = 'Type';
                    ApplicationArea = All;
                }
                field(sorCode; Rec."SOR Code")
                {
                    Caption = 'SOR Code';
                    ApplicationArea = All;
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field(description2; Rec."Description 2")
                {
                    Caption = 'Description 2';
                    ApplicationArea = All;
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                    ApplicationArea = All;
                }
                field(trade; Rec.Trade)
                {
                    Caption = 'Trade';
                    ApplicationArea = All;
                }
                field(materials; Rec.Materials)
                {
                    Caption = 'Materials';
                    ApplicationArea = All;
                }
                field(total; Rec.Total)
                {
                    Caption = 'Total';
                    ApplicationArea = All;
                }
                field(totalInclVat; Rec."Total Incl. VAT")
                {
                    Caption = 'Total Incl. VAT';
                    ApplicationArea = All;
                }
                field(cost; Rec.Cost)
                {
                    Caption = 'Cost';
                    ApplicationArea = All;
                }
                field(totalCost; Rec."Total Cost")
                {
                    Caption = 'Total Cost';
                    ApplicationArea = All;
                }
                field(vatCode; Rec."Vat Code")
                {
                    Caption = 'VAT Code';
                    ApplicationArea = All;
                }
                field(location; Rec.Location)
                {
                    Caption = 'Location';
                    ApplicationArea = All;
                }
                field(variationCompleteDate; Rec."Variation Complete Date")
                {
                    Caption = 'Variation Complete Date';
                    ApplicationArea = All;
                }
                field(issueDate; Rec."Issue Date")
                {
                    Caption = 'Issue Date';
                    ApplicationArea = All;
                }
                field(authorisedBy; Rec."Authorised By")
                {
                    Caption = 'Authorised By';
                    ApplicationArea = All;
                }
                field(authorisationDate; Rec."Authorisation Date")
                {
                    Caption = 'Authorisation Date';
                    ApplicationArea = All;
                }
                field(addedToInvoice; Rec."Added to Invoice")
                {
                    Caption = 'Added to Invoice';
                    ApplicationArea = All;
                }
            }
        }
    }
}
