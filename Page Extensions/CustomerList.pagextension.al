pageextension 50102 "BCT Customer List Ext" extends "Customer List"
{
    layout
    {
        addfirst(FactBoxes)
        {
            part("BCT Subscription Factbox"; "BCT Subscription Factbox")
            {
                SubPageLink = "Customer No" = FIELD("No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addafter("C&ontact")
        {
            action("BCT Subscriptions")
            {
                ApplicationArea = All;
                Caption = 'Subscriptions';
                RunObject = page "BCT Customer Subscriptions";
                RunPageLink = "Customer No" = FIELD("No.");
                image = InsuranceRegisters;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }
}