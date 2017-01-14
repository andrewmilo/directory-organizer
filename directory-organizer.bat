@echo off

echo 1) General Sort
echo 2) Specific Sort

set /p choice=Choose an option:

if "%choice%" == "1" (

    for %%i in (*) do (
        echo "%%~xi"
        if NOT "%%~xi" == ".bat" (

            set continue="false"
            
            if "%%~xi" == ".jpg" ( @mkdir "Pictures" >nul 2>nul & move "%%~nxi" "Pictures" & set continue=true )
            if "%%~xi" == ".png" ( @mkdir "Pictures" >nul 2>nul & move "%%~nxi" "Pictures" & set continue=true )
            if "%%~xi" == ".gif" ( @mkdir "Pictures" >nul 2>nul & move "%%~nxi" "Pictures" & set continue=true )
            if "%%~xi" == ".avi" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".mp4" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".mov" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".wmv" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".yuv" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".flv" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".mkv" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".mpeg" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".m4v" ( @mkdir "Videos" >nul 2>nul & move "%%~nxi" "Videos" & set continue=true )
            if "%%~xi" == ".exe" ( @mkdir "Executables" >nul 2>nul & move "%%~nxi" "Executables" & set continue=true )

            if NOT continue==true @mkdir "Misc" >nul 2>nul & move "%%~nxi" "Misc"
        )
    )
)

if "%choice%" == "2" (

    for %%i in (*.*) do ( 
        
        if NOT "%%~xi" == ".bat" (
            
            @mkdir %%~xi >nul 2>nul & move "%%~nxi" %%~xi
        )
    )
)



pause