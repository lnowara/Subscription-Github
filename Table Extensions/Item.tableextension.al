tableextension 50101 "BCT Item Ext" extends Item
{
    fields
    {
        field(50100; "BCT Subscription Item"; Boolean)
        {
            Caption = 'Subscription Item';
            FieldClass = FlowField;
            CalcFormula = Exist("BCT Customer Subscription" WHERE("Item No" = FIELD("No."), Active = CONST(true)));
            Editable = false;
        }
    }
}