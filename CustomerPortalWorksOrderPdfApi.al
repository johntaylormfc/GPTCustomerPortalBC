page 80121 "CP WorksOrderPdf API"
{
    PageType = API;
    Caption = 'Customer Portal Works Order PDF';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'worksOrderPdf';
    EntitySetName = 'worksOrderPdfs';
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
        // 50002 Timetra Job Card TBSL
        PdfBase64 := PdfHelper.GetBase64Pdf(50002, Rec);
    end;
}
