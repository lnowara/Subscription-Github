table 50100 "BCT Subscription"
{
    Caption = 'Subscription';

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[70])
        {
            Caption = 'Name';
        }
        field(3; "Item No"; code[20])
        {
            Caption = 'Item No';
            TableRelation = Item;
        }
        field(4; "Invoicing Schedule"; option)
        {
            Caption = 'Invoicing Schedule';
            OptionMembers = "Posting Date","Beginning of Period","End of Period","Beginning of Next Period";
            OptionCaption = 'Posting Date,Beginning of Period,End of Period,Beginning of Next Period';
        }
        field(5; "Invoicing Frequence"; DateFormula)
        {
            Caption = 'Invoicing Frequence';
        }
        field(6; "Invoicing Price"; Decimal)
        {
            Caption = 'Invoicing Price';
        }
        field(7; "Deferral Code"; code[20])
        {
            Caption = 'Deferral Code';
            TableRelation = "Deferral Template";
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}