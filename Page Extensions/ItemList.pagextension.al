pageextension 50104 "Item List Ext" extends "Item List"
{
    layout
    {
        addfirst(FactBoxes)
        {
            part("BCT Subscription Factbox"; "BCT Subscription Factbox")
            {
                SubPageLink = "Item No" = FIELD("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addlast(navigation)
        {
            action("BCT Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "BCT Customer Subscriptions";
                RunPageLink = "Item No" = FIELD("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }
}