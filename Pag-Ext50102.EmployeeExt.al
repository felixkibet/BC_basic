pageextension 50102 EmployeeExt extends "Employee Card"
{
    layout
    {
        addafter(Gender)
        {
            field(Age; Rec.Age)
            {
                Caption = 'Age';
                ApplicationArea = Basic;
            }
            field(Village; Rec.Village)
            {
                Caption = 'Village';
                ApplicationArea = Basic;
            }
            field("Village Name"; Rec."Village Name")
            {
                Caption = 'Village Name';
                ApplicationArea = Basic;
            }
        }

        addafter("Employment Date")
        {
            field("Duration Test"; Rec."Duration Test")
            {
                Caption = 'Duration Test';
                ApplicationArea = Basic;
            }
        }

        addafter("Birth Date")
        {
            field("Birth Day"; Rec."Birth Day")
            {
                Caption = 'Birth Day';
                ApplicationArea = Basic;
            }
        }

        modify("First Name")
        {
            Caption = 'Name';

        }
    }
}
