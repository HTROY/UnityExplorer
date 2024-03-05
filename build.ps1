cd UniverseLib
.\build.ps1
cd ..


# ----------- MelonLoader IL2CPP (net6) -----------
dotnet build src/UnityExplorer.sln -c Release_ML_Cpp_net6preview
$Path = "Release\UnityExplorer.MelonLoader.IL2CPP.net6preview"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net6 /lib:lib/unhollowed /lib:$Path /internalize /out:$Path/UnityExplorer.ML.IL2CPP.net6preview.dll $Path/UnityExplorer.ML.IL2CPP.net6preview.dll $Path/mcs.dll
# (cleanup and move files)
Remove-Item $Path/UnityExplorer.ML.IL2CPP.net6preview.deps.json
Remove-Item $Path/UnityExplorer.ML.IL2CPP.net6preview.pdb
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/Iced.dll
Remove-Item $Path/UnhollowerBaseLib.dll
New-Item -Path "$Path" -Name "Mods" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.ML.IL2CPP.net6preview.dll -Destination $Path/Mods -Force
New-Item -Path "$Path" -Name "UserLibs" -ItemType "directory" -Force
Move-Item -Path $Path/UniverseLib.IL2CPP.Unhollower.dll -Destination $Path/UserLibs -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.MelonLoader.IL2CPP.net6preview.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.MelonLoader.IL2CPP.net6preview.zip

# ----------- MelonLoader IL2CPP CoreCLR (net6) -----------
dotnet build src/UnityExplorer.sln -c Release_ML_Cpp_CoreCLR
$Path = "Release\UnityExplorer.MelonLoader.IL2CPP.CoreCLR"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net6 /lib:lib/interop /lib:$Path /internalize /out:$Path/UnityExplorer.ML.IL2CPP.CoreCLR.dll $Path/UnityExplorer.ML.IL2CPP.CoreCLR.dll $Path/mcs.dll
# (cleanup and move files)
Remove-Item $Path/UnityExplorer.ML.IL2CPP.CoreCLR.deps.json
Remove-Item $Path/UnityExplorer.ML.IL2CPP.CoreCLR.pdb
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/Iced.dll
Remove-Item $Path/Il2CppInterop.Common.dll
Remove-Item $Path/Il2CppInterop.Runtime.dll
Remove-Item $Path/Microsoft.Extensions.Logging.Abstractions.dll
New-Item -Path "$Path" -Name "Mods" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.ML.IL2CPP.CoreCLR.dll -Destination $Path/Mods -Force
New-Item -Path "$Path" -Name "UserLibs" -ItemType "directory" -Force
Move-Item -Path $Path/UniverseLib.ML.IL2CPP.Interop.dll -Destination $Path/UserLibs -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.MelonLoader.IL2CPP.CoreCLR.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.MelonLoader.IL2CPP.CoreCLR.zip

# ----------- MelonLoader IL2CPP (net472) -----------
dotnet build src/UnityExplorer.sln -c Release_ML_Cpp_net472
$Path = "Release/UnityExplorer.MelonLoader.IL2CPP"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net472 /lib:lib/net35 /lib:lib/unhollowed /lib:$Path /internalize /out:$Path/UnityExplorer.ML.IL2CPP.dll $Path/UnityExplorer.ML.IL2CPP.dll $Path/mcs.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/Iced.dll
Remove-Item $Path/UnhollowerBaseLib.dll
Remove-Item $Path/UnityExplorer.ML.IL2CPP.pdb
New-Item -Path "$Path" -Name "Mods" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.ML.IL2CPP.dll -Destination $Path/Mods -Force
New-Item -Path "$Path" -Name "UserLibs" -ItemType "directory" -Force
Move-Item -Path $Path/UniverseLib.IL2CPP.Unhollower.dll -Destination $Path/UserLibs -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.MelonLoader.IL2CPP.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.MelonLoader.IL2CPP.zip

# ----------- MelonLoader Mono -----------
dotnet build src/UnityExplorer.sln -c Release_ML_Mono
$Path = "Release/UnityExplorer.MelonLoader.Mono"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net35 /lib:$Path /internalize /out:$Path/UnityExplorer.ML.Mono.dll $Path/UnityExplorer.ML.Mono.dll $Path/mcs.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/UnityExplorer.ML.Mono.pdb
New-Item -Path "$Path" -Name "Mods" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.ML.Mono.dll -Destination $Path/Mods -Force
New-Item -Path "$Path" -Name "UserLibs" -ItemType "directory" -Force
Move-Item -Path $Path/UniverseLib.Mono.dll -Destination $Path/UserLibs -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.MelonLoader.Mono.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.MelonLoader.Mono.zip

# ----------- BepInEx IL2CPP -----------
dotnet build src/UnityExplorer.sln -c Release_BIE_Cpp
$Path = "Release/UnityExplorer.BepInEx.IL2CPP"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net472/BepInEx/build423~577 /lib:lib/unhollowed /lib:$Path /internalize /out:$Path/UnityExplorer.BIE.IL2CPP.dll $Path/UnityExplorer.BIE.IL2CPP.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/Iced.dll
Remove-Item $Path/UnhollowerBaseLib.dll
Remove-Item $Path/UnityExplorer.BIE.IL2CPP.pdb
New-Item -Path "$Path" -Name "plugins" -ItemType "directory" -Force
New-Item -Path "$Path" -Name "plugins/sinai-dev-UnityExplorer" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.BIE.IL2CPP.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
Move-Item -Path $Path/UniverseLib.IL2CPP.Unhollower.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.BepInEx.IL2CPP.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.BepInEx.IL2CPP.zip

# ----------- BepInEx IL2CPP CoreCLR -----------
dotnet build src/UnityExplorer.sln -c Release_BIE_CoreCLR
$Path = "Release/UnityExplorer.BepInEx.IL2CPP.CoreCLR"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net472/BepInEx/build423~577 /lib:lib/net6/ /lib:lib/interop/ /lib:$Path /internalize /out:$Path/UnityExplorer.BIE.IL2CPP.CoreCLR.dll $Path/UnityExplorer.BIE.IL2CPP.CoreCLR.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/Iced.dll
Remove-Item $Path/Il2CppInterop.Common.dll
Remove-Item $Path/Il2CppInterop.Runtime.dll
Remove-Item $Path/Microsoft.Extensions.Logging.Abstractions.dll
Remove-Item $Path/UnityExplorer.BIE.IL2CPP.CoreCLR.deps.json
Remove-Item $Path/UnityExplorer.BIE.IL2CPP.CoreCLR.pdb
New-Item -Path "$Path" -Name "plugins" -ItemType "directory" -Force
New-Item -Path "$Path" -Name "plugins/sinai-dev-UnityExplorer" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.BIE.IL2CPP.CoreCLR.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
Move-Item -Path $Path/UniverseLib.BIE.IL2CPP.Interop.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.BepInEx.IL2CPP.CoreCLR.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.BepInEx.IL2CPP.CoreCLR.zip

# ----------- BepInEx Unity IL2CPP CoreCLR -----------
dotnet build src/UnityExplorer.sln -c Release_BIE_Unity_Cpp
$Path = "Release/UnityExplorer.BepInEx.Unity.IL2CPP.CoreCLR"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net472/BepInEx/build647+ /lib:lib/net6/ /lib:lib/interop/ /lib:$Path /internalize /out:$Path/UnityExplorer.BIE.Unity.IL2CPP.CoreCLR.dll $Path/UnityExplorer.BIE.Unity.IL2CPP.CoreCLR.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/Iced.dll
Remove-Item $Path/Il2CppInterop.Common.dll
Remove-Item $Path/Il2CppInterop.Runtime.dll
Remove-Item $Path/Microsoft.Extensions.Logging.Abstractions.dll
Remove-Item $Path/UnityExplorer.BIE.Unity.IL2CPP.CoreCLR.deps.json
Remove-Item $Path/UnityExplorer.BIE.Unity.IL2CPP.CoreCLR.pdb
New-Item -Path "$Path" -Name "plugins" -ItemType "directory" -Force
New-Item -Path "$Path" -Name "plugins/sinai-dev-UnityExplorer" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.BIE.Unity.IL2CPP.CoreCLR.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
Move-Item -Path $Path/UniverseLib.BIE.IL2CPP.Interop.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.BepInEx.Unity.IL2CPP.CoreCLR.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.BepInEx.Unity.IL2CPP.CoreCLR.zip

# ----------- BepInEx 5 Mono -----------
dotnet build src/UnityExplorer.sln -c Release_BIE5_Mono
$Path = "Release/UnityExplorer.BepInEx5.Mono"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net35 /lib:lib/net35/BepInEx /lib:$Path /internalize /out:$Path/UnityExplorer.BIE5.Mono.dll $Path/UnityExplorer.BIE5.Mono.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/UnityExplorer.BIE5.Mono.pdb
New-Item -Path "$Path" -Name "plugins" -ItemType "directory" -Force
New-Item -Path "$Path" -Name "plugins/sinai-dev-UnityExplorer" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.BIE5.Mono.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
Move-Item -Path $Path/UniverseLib.Mono.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.BepInEx5.Mono.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.BepInEx5.Mono.zip

# ----------- BepInEx 6 Mono -----------
dotnet build src/UnityExplorer.sln -c Release_BIE6_Mono
$Path = "Release/UnityExplorer.BepInEx6.Mono"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net35 /lib:lib/net35/BepInEx/build423~577 /lib:$Path /internalize /out:$Path/UnityExplorer.BIE6.Mono.dll $Path/UnityExplorer.BIE6.Mono.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/UnityExplorer.BIE6.Mono.pdb
New-Item -Path "$Path" -Name "plugins" -ItemType "directory" -Force
New-Item -Path "$Path" -Name "plugins/sinai-dev-UnityExplorer" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.BIE6.Mono.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
Move-Item -Path $Path/UniverseLib.Mono.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.BepInEx6.Mono.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.BepInEx6.Mono.zip

# ----------- BepInEx 6 Unity Mono -----------
dotnet build src/UnityExplorer.sln -c Release_BIE6_Unity_Mono
$Path = "Release/UnityExplorer.BepInEx6.Unity.Mono"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net35 /lib:lib/net35/BepInEx/build647+ /lib:$Path /internalize /out:$Path/UnityExplorer.BIE6.Unity.Mono.dll $Path/UnityExplorer.BIE6.Unity.Mono.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/UnityExplorer.BIE6.Unity.Mono.pdb
New-Item -Path "$Path" -Name "plugins" -ItemType "directory" -Force
New-Item -Path "$Path" -Name "plugins/sinai-dev-UnityExplorer" -ItemType "directory" -Force
Move-Item -Path $Path/UnityExplorer.BIE6.Unity.Mono.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
Move-Item -Path $Path/UniverseLib.Mono.dll -Destination $Path/plugins/sinai-dev-UnityExplorer -Force
# (create zip archive)
Remove-Item $Path/../UnityExplorer.BepInEx6.Unity.Mono.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.BepInEx6.Unity.Mono.zip

# ----------- Standalone Mono -----------
dotnet build src/UnityExplorer.sln -c Release_STANDALONE_Mono
$Path = "Release/UnityExplorer.Standalone.Mono"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net35 /lib:$Path /internalize /out:$Path/UnityExplorer.Standalone.Mono.dll $Path/UnityExplorer.Standalone.Mono.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/UnityExplorer.Standalone.Mono.pdb
Remove-Item $Path/../UnityExplorer.Standalone.Mono.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.Standalone.Mono.zip

# ----------- Standalone IL2CPP -----------
dotnet build src/UnityExplorer.sln -c Release_STANDALONE_Cpp
$Path = "Release/UnityExplorer.Standalone.IL2CPP"
# ILRepack
lib/ILRepack.exe /target:library /lib:lib/net472 /lib:lib/unhollowed /lib:$Path /internalize /out:$Path/UnityExplorer.Standalone.IL2CPP.dll $Path/UnityExplorer.Standalone.IL2CPP.dll $Path/mcs.dll $Path/Tomlet.dll
# (cleanup and move files)
Remove-Item $Path/Tomlet.dll
Remove-Item $Path/mcs.dll
Remove-Item $Path/Iced.dll
Remove-Item $Path/UnhollowerBaseLib.dll
Remove-Item $Path/UnityExplorer.Standalone.IL2CPP.pdb
Remove-Item $Path/../UnityExplorer.Standalone.IL2CPP.zip -ErrorAction SilentlyContinue
compress-archive .\$Path\* $Path/../UnityExplorer.Standalone.IL2CPP.zip

# ----------- Editor (mono) -----------
$Path1 = "Release/UnityExplorer.Standalone.Mono"
$Path2 = "UnityEditorPackage/Runtime"
Copy-Item $Path1/UnityExplorer.STANDALONE.Mono.dll -Destination $Path2
Copy-Item $Path1/UniverseLib.Mono.dll -Destination $Path2
Remove-Item Release/UnityExplorer.Editor.zip -ErrorAction SilentlyContinue
compress-archive .\UnityEditorPackage\*  Release/UnityExplorer.Editor.zip