pageextension 50101 "BCT Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("BCT Subscription Customer"; Rec."BCT Subscription Customer")
            {
                ApplicationArea = All;
            }
        }
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
        addafter(Contact)
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