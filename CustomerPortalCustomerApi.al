page 80101 "CP Customer API"
{
    PageType = API;
    Caption = 'Customer Portal Customer Summary';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'customerSummary';
    EntitySetName = 'customerSummaries';
    SourceTable = Customer;
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
                    Caption = 'Customer No.';
                    ApplicationArea = All;
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                    ApplicationArea = All;
                }
                field(balance; Rec.Balance)
                {
                    Caption = 'Balance';
                    ApplicationArea = All;
                }
                field(balanceDueLcy; Rec."Balance Due (LCY)")
                {
                    Caption = 'Balance Due (LCY)';
                    ApplicationArea = All;
                }
                field(salesLcy; Rec."Sales (LCY)")
                {
                    Caption = 'Sales (LCY)';
                    ApplicationArea = All;
                }
            }
        }
    }
}
