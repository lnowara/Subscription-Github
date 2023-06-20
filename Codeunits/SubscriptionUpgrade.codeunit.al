codeunit 50101 "BCT MyCodeunit"
{
    Subtype = Normal;

    local procedure OnUpgradeAppPerCompany();
    var
        ModuleInfo: ModuleInfo;
    begin
        //move data from upgrade tables to the upgraded tables
        NavApp.GetModuleInfo('e5060371-6a40-4508-8bb3-aa049617a367', ModuleInfo);
        case format(ModuleInfo.AppVersion) of
            '1.0.0.0':
                DoSomething();
        end;
        Error('ups');

    end;

    local procedure OnUpgradeAppPerDatabase();
    begin
        //move data from upgrade tables to the upgraded tables
    end;

    local procedure DoSomething()
    var
        myInt: Integer;
    begin

    end;
}