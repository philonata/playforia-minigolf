; Script generated by the Inno Setup Script Wizard.

#define MyAppName "Minigolf Client"
#define MyAppPublisher "Philipp van Kempen"
#define MyAppURL "https://github.com/PhilippvK/playforia-minigolf"
#define MyAppExeName "client.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5A8934E9-7C09-4BA1-82A8-A572960C2B4B}
ArchitecturesInstallIn64BitMode=x64
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppMutex=clientmutex
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
;LicenseFile=licenses/gplv3.txt
OutputBaseFilename=setup64
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes

[Registry]
Root: HKCR; Subkey: ".mini"; ValueType: string; ValueName: ""; ValueData: "Quelea Schedule"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Minigolf Client"; ValueType: string; ValueName: ""; ValueData: "Quelea Schedule"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Minigolf Client\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\icons\logo.ico,0"
Root: HKCR; Subkey: "Minigolf Client\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\client.exe"" ""%1"""

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Dirs]  
Name: "{app}"; Permissions: everyone-modify;  

[InstallDelete]
Type: filesandordirs; Name: "{app}/lib"
Type: filesandordirs; Name: "{app}/vbs"

[Files]
Source: "client.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "client.jar"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\icons\logo.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\icons\logo.ico"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; IconFilename: "{app}\icons\logo.ico"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: shellexec postinstall skipifsilent
