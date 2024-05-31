page 50103 VillageOccupantCard
{
    ApplicationArea = All;
    Caption = 'VillageOccupantCard';
    PageType = Card;
    SourceTable = Villages;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(County; Rec.County)
                {
                    ToolTip = 'Specifies the value of the County field.', Comment = '%';
                }
            }

            part(Control01; VillageOccupantsList)
            {
                SubPageLink = "Village No" = field(Code);
            }

        }
    }
}
