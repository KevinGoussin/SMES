; Script complet Inno Setup pour CSVSmes avec icône personnalisée
; Raccourci "Traçabilité séchoirs" qui ouvre index.html dans le navigateur
; Icône personnalisée flamme.ico pour les raccourcis et l'installateur
; Installation en français et désinstallateur inclus
; Fichier .exe généré sur le bureau de l'utilisateur SMES

[Setup]
AppName=CSVSmes
AppVersion=1.0
DefaultDirName={pf}\CSVSmes
DefaultGroupName=CSVSmes
OutputBaseFilename=CSVSmes_Install
OutputDir=C:\Users\SMES\Desktop
Compression=lzma
SolidCompression=yes
Uninstallable=yes
PrivilegesRequired=admin
; Icône de l'installateur
SetupIconFile=D:\CSVSmes\flamme.ico

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Files]
; Copier tous les fichiers et sous-dossiers depuis D:\CSVSmes, y compris l'icône
Source: "D:\CSVSmes\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
; Raccourci menu démarrer avec icône personnalisée
Name: "{group}\Traçabilité séchoirs"; Filename: "{app}\index.html"; IconFilename: "{app}\flamme.ico"
; Raccourci bureau avec icône personnalisée
Name: "{userdesktop}\Traçabilité séchoirs"; Filename: "{app}\index.html"; IconFilename: "{app}\flamme.ico"

[Run]
; Ouvrir index.html dans le navigateur par défaut après l'installation
Filename: "cmd"; Parameters: "/c start """" ""{app}\index.html"""; Description: "Exécuter CSV SMES"; Flags: nowait postinstall skipifsilent
