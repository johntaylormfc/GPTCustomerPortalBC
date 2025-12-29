page 80113 "CP StatementPdf API"
{
    PageType = API;
    Caption = 'Customer Portal Statement PDF';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'customerStatementPdf';
    EntitySetName = 'customerStatementPdfs';
    SourceTable = Customer;
    ODataKeyFields = SystemId;
    DataAccessIntent = ReadWrite;
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
                field(pdfBase64; PdfBase64)
                {
                    Caption = 'PDF (Base64)';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    var
        PdfBase64: Text;
        PdfHelper: Codeunit "Customer Portal Pdf Helper";

    trigger OnAfterGetRecord()
    begin
        PdfBase64 := PdfHelper.GetBase64PdfFromSelection("Report Selection Usage"::"C.Statement", 1316, Rec);
    end;
}
