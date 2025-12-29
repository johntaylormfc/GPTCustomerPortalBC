page 80117 "CP WorksOrders API"
{
    PageType = API;
    Caption = 'Customer Portal Works Orders';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'worksOrder';
    EntitySetName = 'worksOrders';
    SourceTable = "Works Order Header TBSL";
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
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                    ApplicationArea = All;
                }
                field(customerRepairNo; Rec."Customer Repair No.")
                {
                    Caption = 'Customer Repair No.';
                    ApplicationArea = All;
                }
                field(issueDate; Rec."Issue Date")
                {
                    Caption = 'Issue Date';
                    ApplicationArea = All;
                }
                field(responseDate; Rec."Response Date")
                {
                    Caption = 'Response Date';
                    ApplicationArea = All;
                }
                field(completionDate; Rec."Completion Date")
                {
                    Caption = 'Completion Date';
                    ApplicationArea = All;
                }
                field(completionTime; Rec."Completion Time")
                {
                    Caption = 'Completion Time';
                    ApplicationArea = All;
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                    ApplicationArea = All;
                }
                field(jobType; Rec."Job Type")
                {
                    Caption = 'Job Type';
                    ApplicationArea = All;
                }
                field(recalledDate; Rec."Recalled Date")
                {
                    Caption = 'Recalled Date';
                    ApplicationArea = All;
                }
                field(rectifiedDate; Rec."Rectified Date")
                {
                    Caption = 'Rectified Date';
                    ApplicationArea = All;
                }
                field(invoiceNo; Rec."Invoice No.")
                {
                    Caption = 'Invoice No.';
                    ApplicationArea = All;
                }
                field(released; Rec.Released)
                {
                    Caption = 'Released';
                    ApplicationArea = All;
                }
                field(paid; Rec.Paid)
                {
                    Caption = 'Paid';
                    ApplicationArea = All;
                }
                field(tenantName; Rec."Tenant Name")
                {
                    Caption = 'Tenant Name';
                    ApplicationArea = All;
                }
                field(tenantAddress; Rec."Tenant Address")
                {
                    Caption = 'Tenant Address';
                    ApplicationArea = All;
                }
                field(tenantAddress2; Rec."Tenant Address 2")
                {
                    Caption = 'Tenant Address 2';
                    ApplicationArea = All;
                }
                field(tenantCity; Rec."Tenant City")
                {
                    Caption = 'Tenant City';
                    ApplicationArea = All;
                }
                field(tenantPostcode; Rec."Tenant Postcode")
                {
                    Caption = 'Tenant Postcode';
                    ApplicationArea = All;
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                    ApplicationArea = All;
                }
                field(email; Rec."E-Mail")
                {
                    Caption = 'E-Mail';
                    ApplicationArea = All;
                }
                field(contractorCode; Rec."Contractor Code")
                {
                    Caption = 'Contractor Code';
                    ApplicationArea = All;
                }
                field(total; Rec.Total)
                {
                    Caption = 'Total';
                    ApplicationArea = All;
                }
                field(totalInclVat; Rec."Total Incl. Vat")
                {
                    Caption = 'Total Incl. VAT';
                    ApplicationArea = All;
                }
                field(totalCost; Rec."Total Cost")
                {
                    Caption = 'Total Cost';
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec.CalcFields(Total, "Total Incl. Vat", "Total Cost", "Contractor Code");
    end;
}
