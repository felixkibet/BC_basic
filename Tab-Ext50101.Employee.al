tableextension 50101 EmployeeExt extends Employee
{
    fields
    {
        field(50100; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = ToBeClassified;
        }

        field(50101; Village; Code[10])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
            TableRelation = Villages;

            trigger OnValidate()
            var
                myVillage: Record Villages;
            begin
                myVillage.Reset();
                myVillage.SetRange(Code, village);
                if myVillage.FindSet() then
                    "Village Name" := myVillage.Name;
            end;
        }

        field(50102; "Village Name"; Text[20])
        {
            Caption = 'Village Name';
            DataClassification = ToBeClassified;

        }

        field(50103; "Duration Test"; Text[4])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Rec."Termination Date" := CalcDate("Duration Test", "Employment Date");
                Rec.Modify(true);
            end;
        }

        field(50104; "Birth Day"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Birth Day';
            Editable = true;

            trigger OnValidate()
            var
                today: Date;
                birthDate: Date;
                dobDay: Integer;
                dobMonth: Integer;
                todayYear: Integer;
                nextBirthdayYear: Integer;
                nextBirthday: Date;
            begin
                // Get today's date
                today := Today();
                birthDate := Rec."Birth Date";

                // Get the birth date
                if birthDate = 0D then
                    Error('Birth date is not set.');

                // Extract the day and month from the birth date
                dobDay := Date2DMY(birthDate, 3);
                dobMonth := Date2DMY(birthDate, 2);

                // Get the current year
                todayYear := Date2DMY(today, 1);

                // Determine the next birthday year
                if (dobMonth > Date2DMY(today, 2)) or ((dobMonth = Date2DMY(today, 2)) and (dobDay >= Date2DMY(today, 3))) then
                    nextBirthdayYear := todayYear
                else
                    nextBirthdayYear := todayYear + 1;

                // Construct the next birthday date
                nextBirthday := DMY2Date(dobDay, dobMonth, nextBirthdayYear);

                // Set the "Birth Day" field
                "Birth Day" := nextBirthday;
            end;
        }
    }
}
