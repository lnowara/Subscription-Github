pageextension 50103 "BCT Item Card Ext" extends "Item Card"
{
    layout
    {
        modify("Standard Cost")
        {
            Enabled = false;
            Visible = false;
        }
        modify("Unit Cost")
        {
            Enabled = false;
            Visible = false;
        }

        addlast(Item)
        {
            field("BCT Subscription Item"; Rec."BCT Subscription Item")
            {
                ApplicationArea = All;

            }
        }
        addlast("Costs & Posting")
        {
            field("BCT Inventory Value Zero"; Rec."Inventory Value Zero")
            {
                ApplicationArea = All;
            }
        }
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
        addfirst(Navigation)
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