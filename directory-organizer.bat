@echo off

for %%i in (*.*) do ( 
    
    if NOT "%%~xi" == ".bat" (
        
        @mkdir %%~xi >nul 2>nul & move "%%~nxi" %%~xi
    )
)

pause