$nuGetPath = "C:\Chocolatey\bin\nuget.bat"
$msBuildPath = "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe"

& $nuGetPath restore ..\ProductLaunch.sln -PackagesDirectory ..\packages

& $msBuildPath .\ProductLaunch.MessageHandlers.SaveProspect.csproj /p:OutputPath=c:\out
