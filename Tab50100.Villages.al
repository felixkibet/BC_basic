table 50100 Villages
{
    Caption = 'Villages';
    DataPerCompany = true;
    DataClassification = ToBeClassified;
    DrillDownPageId = 50101;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[15])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; County; Code[15])
        {
            Caption = 'County';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
