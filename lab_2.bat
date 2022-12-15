@echo off

set Source = %1%
set Destination = %2%
set Extension = %3%

if not exist %Source% goto source_does_not_exist
if not exist %Destination% mkdir %Destination%
if "%Extension%" == "" goto extension_is_empty

xcopy %Source%\*.%Extension% %Destination% /S
echo "Successfully accomplished!"

:extension_is_empty:
echo "The extension cannot be mepty"
goto end

:source_does_not_exist
echo "The specified path %Source% does not exist"
goto end

:end