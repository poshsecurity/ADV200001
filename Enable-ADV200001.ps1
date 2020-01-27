$windir = $Env:SystemRoot
$jscriptdllPath = Join-Path -Path $windir -ChildPath 'system32\jscript.dll'
$jscriptdll64Path = Join-Path -Path $windir -ChildPath 'syswow64\jscript.dll'

if (Test-Path -Path $jscriptdll64Path) {
    takeown /f $jscriptdll64Path
    cacls jscriptdll64Path /E /P everyone:N
}

takeown /f $jscriptdllPath
cacls $jscriptdllPath /E /P everyone:N
