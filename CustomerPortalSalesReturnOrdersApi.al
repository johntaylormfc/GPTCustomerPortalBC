page 80106 "CP SalesReturnOrders API"
{
    PageType = API;
    Caption = 'Customer Portal Sales Return Orders';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'salesReturnOrder';
    EntitySetName = 'salesReturnOrders';
    SourceTable = "Sales Header";
    SourceTableView = where("Document Type" = const("Return Order"));
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
                field(returnDate; Rec."Document Date")
                {
                    Caption = 'Document Date';
                    ApplicationArea = All;
                }
                field(currencyCode; Rec."Currency Code")
                {
                    Caption = 'Currency Code';
                    ApplicationArea = All;
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                    ApplicationArea = All;
                }
                field(amountIncludingVAT; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT';
                    ApplicationArea = All;
                }
            }
        }
    }
}
