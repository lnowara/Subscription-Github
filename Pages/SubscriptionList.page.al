page 50101 "BCT Subscription List"
{
    Caption = 'Subscription List';
    PageType = List;
    SourceTable = "BCT Subscription";
    Editable = false;
    CardPageId = "BCT Subscription Card";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Item No"; Rec."Item No")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Schedule"; Rec."Invoicing Schedule")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Frequence"; Rec."Invoicing Frequence")
                {
                    ApplicationArea = All;
                }
                field("Invoicing Price"; Rec."Invoicing Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}