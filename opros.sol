program
var SVV: Server;
    opros: Signal;
    tobe: Variant;
begin
   SVV := Connect ("", "AP.OPCDAServer");
   opros := AddSignal(SVV,"Service.Modules.IEC_STM.Stations.Station 1204.CommonPoll.Command");
   tobe := GetValue(opros);
   while (True) do
   begin
        tobe := "true";
        SetValue (opros, tobe);
        Sleep(5000);
        tobe := "false";
        SetValue (opros, tobe);
        Sleep(3000);
   end;
   
end.
