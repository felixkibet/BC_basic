table 50102 VillageOcuppants
{
    Caption = 'VillageOcuppants';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
            AutoIncrement = true;
        }
        field(2; "Village No"; Code[10])
        {
            Caption = 'Village No';
        }
        field(3; "First Name"; Text[10])
        {
            Caption = 'First Name';
        }
        field(4; "Last Name"; Text[10])
        {
            Caption = 'Last Name';
        }
        field(5; Occupation; Text[10])
        {
            Caption = 'Occupation';
        }
        field(6; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
    }
    keys
    {
        key(PK; "Line No.", "Village No")
        {
            Clustered = true;
        }
    }
}
