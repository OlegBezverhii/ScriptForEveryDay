option explicit 
' conHost -- адрес хоста для слежения 
' conCheckInterval -- временной интервал 
const conHost = "8.8.8.8", conCheckInterval = 999

' создаём объект: 
dim soWshShell : set soWshShell = CreateObject("WScript.Shell") 
WScript.Quit Main() 

function WriteLog(strText) 
  WScript.Stdout.WriteLine FormatDateTime(Time(), vbLongTime) & " " & strText
end function 

function GetHostStatus(strHost) 
  dim oPing : set oPing = soWshShell.Exec("ping -n 1 " & strHost) 
  dim strOut : strOut = "" 
  do 
    WScript.Sleep 100 
    if not oPing.Stdout.AtEndOfStream then 
      strOut = strOut & oPing.Stdout.ReadAll 
    end if 
  loop until oPing.Status = 1 

  dim oRegExp : set oRegExp = new RegExp 
  oRegExp.IgnoreCase = true 
  oRegExp.Pattern = "[^ ]+:.+TTL=[^\r\n]+" 
  dim oMatches : set oMatches = oRegExp.Execute(strOut) 
  if oMatches.Count > 0 then 
    GetHostStatus = oMatches(0).Value 
  else 
    GetHostStatus = "Inaccessible!.." 
  end if 
end function 

function Main() 
  do 
    WriteLog(GetHostStatus(conHost)) 
    WScript.Sleep(conCheckInterval) 
  loop 
end function