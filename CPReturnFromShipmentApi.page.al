page 80116 "CP ReturnFromShipment API"
{
    PageType = API;
    Caption = 'Customer Portal Return From Shipment';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'returnFromShipment';
    EntitySetName = 'returnFromShipments';
    SourceTable = "CP Return Request";
    DelayedInsert = true;
    InsertAllowed = true;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(shipmentNo; Rec."Shipment No.")
                {
                    Caption = 'Shipment No';
                    ApplicationArea = All;
                }
                field(linesJson; Rec."Lines Json")
                {
                    Caption = 'Lines Json';
                    ApplicationArea = All;
                }
                field(returnOrderNo; Rec."Return Order No.")
                {
                    Caption = 'Return Order No';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    var
        ReturnHelper: Codeunit "CP Return Helper";

    trigger OnInsertRecord(Belowx: Boolean): Boolean
    begin
        Rec."Return Order No." := ReturnHelper.CreateReturnFromShipment(Rec."Shipment No.", Rec."Lines Json");
        exit(true);
    end;
}
