page 80112 "CP SalesCrMemoPdf API"
{
    PageType = API;
    Caption = 'Customer Portal Sales Credit Memo PDF';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'salesCreditMemoPdf';
    EntitySetName = 'salesCreditMemoPdfs';
    SourceTable = "Sales Cr.Memo Header";
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
                    Caption = 'No.';
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
        PdfBase64 := PdfHelper.GetBase64PdfFromSelection("Report Selection Usage"::"S.Cr.Memo", 1309, Rec);
    end;
}
