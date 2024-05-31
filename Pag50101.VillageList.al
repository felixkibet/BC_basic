page 50101 VillageList
{
    ApplicationArea = All;
    Caption = 'Village List';
    PageType = List;
    SourceTable = Villages;
    UsageCategory = Lists;
    CardPageId = VillageOccupantCard;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    Caption = 'Code';
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Village Name';
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(County; Rec.County)
                {
                    Caption = 'County';
                    ToolTip = 'Specifies the value of the County field.', Comment = '%';
                }
            }
        }
    }
}
