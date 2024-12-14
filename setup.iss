#define MyAppName "НОТАТКИ"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Your Company"
#define MyAppExeName "NotesApp.exe"
#define SourcePath "C:\Users\pilk\Desktop\NOTPADE\NotesApp\bin\Release\net9.0-windows\win-x64\publish"

[Setup]
AppId={{B8A9A6E8-7C52-4F3D-A1E6-2DEF98864851}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=installer
OutputBaseFilename=Нотатки_Інсталятор
Compression=lzma
SolidCompression=yes
WizardStyle=modern


[Languages]
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Messages]
ukrainian.BeveledLabel=Українська
ukrainian.ButtonNext=&Далі >
ukrainian.ButtonBack=< &Назад
ukrainian.ButtonCancel=Скасувати
ukrainian.ButtonInstall=&Встановити
ukrainian.ButtonFinish=&Завершити
ukrainian.SelectDirLabel3=Програма встановить [name] в наступну папку.
ukrainian.SelectDirBrowseLabel=Щоб продовжити, натисніть "Далі". Якщо ви хочете вибрати іншу папку, натисніть "Огляд".

[Tasks]
Name: "desktopicon"; Description: "Створити ярлик на робочому столі"; GroupDescription: "Додаткові значки:"

[Files]
Source: "{#SourcePath}\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourcePath}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Запустити програму"; Flags: nowait postinstall skipifsilent 