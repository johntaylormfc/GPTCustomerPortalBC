codeunit 80122 "CP Return Helper"
{
    Subtype = Normal;

    procedure CreateReturnFromShipment(ShipmentNo: Code[20]; LinesJson: Text): Code[20]
    var
        ShipmentHdr: Record "Sales Shipment Header";
        ShipmentLine: Record "Sales Shipment Line";
        ReturnHeader: Record "Sales Header";
        ReturnLine: Record "Sales Line";
        JsonArr: JsonArray;
        JsonTok: JsonToken;
        JsonObj: JsonObject;
        LineNoTok: JsonToken;
        QtyTok: JsonToken;
        LineNo: Integer;
        Qty: Decimal;
    begin
        if not ShipmentHdr.Get(ShipmentNo) then
            Error('Shipment %1 not found.', ShipmentNo);

        // Create Return Order header
        ReturnHeader.Init();
        ReturnHeader.Validate("Document Type", ReturnHeader."Document Type"::"Return Order");
        ReturnHeader.Insert(true);

        ReturnHeader.Validate("Sell-to Customer No.", ShipmentHdr."Sell-to Customer No.");
        ReturnHeader.Validate("Bill-to Customer No.", ShipmentHdr."Bill-to Customer No.");
        ReturnHeader.Validate("Ship-to Code", ShipmentHdr."Ship-to Code");
        ReturnHeader.Validate("Posting Date", Today);
        ReturnHeader.Modify(true);

        if not JsonArr.ReadFrom(LinesJson) then
            Error('Invalid lines payload.');

        foreach JsonTok in JsonArr do begin
            JsonObj := JsonTok.AsObject();
            if not JsonObj.Get('lineNo', LineNoTok) then
                Error('lineNo is required.');
            if not LineNoTok.IsValue() then
                Error('lineNo must be a value.');
            LineNo := LineNoTok.AsValue().AsInteger();

            if not JsonObj.Get('quantity', QtyTok) then
                Error('quantity is required.');
            if not QtyTok.IsValue() then
                Error('quantity must be a value.');
            Qty := QtyTok.AsValue().AsDecimal();
            if Qty <= 0 then
                Error('Quantity must be greater than zero.');

            ShipmentLine.Reset();
            ShipmentLine.SetRange("Document No.", ShipmentNo);
            ShipmentLine.SetRange("Line No.", LineNo);
            if not ShipmentLine.FindFirst() then
                Error('Shipment line %1 not found.', LineNo);

            ReturnLine.Init();
            ReturnLine.Validate("Document Type", ReturnLine."Document Type"::"Return Order");
            ReturnLine.Validate("Document No.", ReturnHeader."No.");
            ReturnLine.Validate(Type, ShipmentLine.Type);
            ReturnLine.Validate("No.", ShipmentLine."No.");
            ReturnLine.Validate(Quantity, Qty);
            ReturnLine.Validate("Unit of Measure Code", ShipmentLine."Unit of Measure Code");
            ReturnLine.Validate("Location Code", ShipmentLine."Location Code");
            ReturnLine.Validate(Description, ShipmentLine.Description);
            ReturnLine.Insert(true);
        end;

        exit(ReturnHeader."No.");
    end;
}
