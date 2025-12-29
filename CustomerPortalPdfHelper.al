codeunit 80120 "Customer Portal Pdf Helper"
{
    Access = Internal;
    SingleInstance = false;

    procedure GetBase64Pdf(ReportId: Integer; RecordVariant: Variant): Text
    var
        TempBlob: Codeunit "Temp Blob";
        Base64: Codeunit "Base64 Convert";
        RecRef: RecordRef;
        OutStream: OutStream;
        InStream: InStream;
    begin
        RecRef.GetTable(RecordVariant);
        Clear(TempBlob);
        TempBlob.CreateOutStream(OutStream);
        Report.SaveAs(ReportId, '', ReportFormat::Pdf, OutStream, RecRef);
        TempBlob.CreateInStream(InStream);
        exit(Base64.ToBase64(InStream));
    end;

    procedure GetBase64PdfFromSelection(Usage: Enum "Report Selection Usage"; DefaultReportId: Integer; RecordVariant: Variant): Text
    var
        ReportSelections: Record "Report Selections";
        ReportId: Integer;
    begin
        ReportId := DefaultReportId;

        ReportSelections.SetRange(Usage, Usage);
        ReportSelections.SetFilter("Report ID", '<>0');
        if ReportSelections.FindFirst() then
            ReportId := ReportSelections."Report ID";

        exit(GetBase64Pdf(ReportId, RecordVariant));
    end;
}
