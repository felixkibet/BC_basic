report 50100 VillageOccupants
{
    ApplicationArea = All;
    Caption = 'Village Occupants Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './villageoccupants.rdl';

    dataset
    {
        dataitem(VillageOcuppants; VillageOcuppants)
        {
            column(LineNo; "Line No.")
            {
            }
            column(FirstName; "First Name")
            {
            }
            column(LastName; "Last Name")
            {
            }
            column(Occupation; Occupation)
            {
            }
            column(DateofBirth; "Date of Birth")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
