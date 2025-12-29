page 80119 "CP WorksOrderEvents API"
{
    PageType = API;
    Caption = 'Customer Portal Works Order Events';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'worksOrderEvent';
    EntitySetName = 'worksOrderEvents';
    SourceTable = "Events TBSL";
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
                field(entryNo; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                    ApplicationArea = All;
                }
                field(jobNo; Rec."Job No.")
                {
                    Caption = 'Job No.';
                    ApplicationArea = All;
                }
                field(customerJobNo; Rec."Customer Job No.")
                {
                    Caption = 'Customer Job No.';
                    ApplicationArea = All;
                }
                field(direction; Rec.Direction)
                {
                    Caption = 'Direction';
                    ApplicationArea = All;
                }
                field(eventType; Rec.Type)
                {
                    Caption = 'Type';
                    ApplicationArea = All;
                }
                field(detail; Rec.Detail)
                {
                    Caption = 'Detail';
                    ApplicationArea = All;
                }
                field(eventDate; Rec."Event Date")
                {
                    Caption = 'Event Date';
                    ApplicationArea = All;
                }
                field(eventTime; Rec."Event Time")
                {
                    Caption = 'Event Time';
                    ApplicationArea = All;
                }
                field(attention; Rec.Attention)
                {
                    Caption = 'Attention';
                    ApplicationArea = All;
                }
                field(requiresAttention; Rec."Requires Attention")
                {
                    Caption = 'Requires Attention';
                    ApplicationArea = All;
                }
                field(stage; Rec.Stage)
                {
                    Caption = 'Stage';
                    ApplicationArea = All;
                }
                field(appointmentTime; Rec."Appointment Time")
                {
                    Caption = 'Appointment Time';
                    ApplicationArea = All;
                }
                field(extraText; Rec."Extra Text")
                {
                    Caption = 'Extra Text';
                    ApplicationArea = All;
                }
                field(sent; Rec.Sent)
                {
                    Caption = 'Sent';
                    ApplicationArea = All;
                }
                field(userId; Rec."User ID")
                {
                    Caption = 'User ID';
                    ApplicationArea = All;
                }
            }
        }
    }
}
