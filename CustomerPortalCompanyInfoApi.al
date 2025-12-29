page 80100 "CP CompanyInfo API"
{
    PageType = API;
    Caption = 'Customer Portal Company Info';
    APIPublisher = 'bcDev';
    APIGroup = 'portal';
    APIVersion = 'v1.0';
    EntityName = 'companyInfo';
    EntitySetName = 'companyInfos';
    SourceTable = "Company Information";
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
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                    ApplicationArea = All;
                }
                field(address; Rec.Address)
                {
                    Caption = 'Address';
                    ApplicationArea = All;
                }
                field(address2; Rec."Address 2")
                {
                    Caption = 'Address 2';
                    ApplicationArea = All;
                }
                field(city; Rec.City)
                {
                    Caption = 'City';
                    ApplicationArea = All;
                }
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                    ApplicationArea = All;
                }
                field(countryRegionCode; Rec."Country/Region Code")
                {
                    Caption = 'Country/Region Code';
                    ApplicationArea = All;
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                    ApplicationArea = All;
                }
                field(vatRegistrationNo; Rec."VAT Registration No.")
                {
                    Caption = 'VAT Registration No.';
                    ApplicationArea = All;
                }
                field(logoBase64; LogoBase64)
                {
                    Caption = 'Logo Base64';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    var
        LogoBase64: Text;
        MediaInStream: InStream;
        Base64: Codeunit "Base64 Convert";

    trigger OnAfterGetRecord()
    begin
        Clear(LogoBase64);
        Rec.CalcFields(Picture);
        if not Rec.Picture.HasValue then
            exit;

        Rec.Picture.CreateInStream(MediaInStream);
        LogoBase64 := Base64.ToBase64(MediaInStream);
    end;
}
