@echo off & setlocal
for /f "usebackq skip=1" %%X in (`
    wmic logicaldisk where "mediatype='12'" get caption
  `) do call :drive %%X
endlocal & goto :eof

:drive
if "%~1"=="" goto :eof
set "freeB=" & set "sizeB="
for /f "usebackq skip=1 tokens=1,2" %%X in (`
    wmic logicaldisk where "DeviceID='%1'" get freespace^,size
  `) do if not defined freeB (set "freeB=%%X" & set "sizeB=%%Y")
set/a freeMB = %freeB:~0,-6% & set/a sizeMB = %sizeB:~0,-6%
set/a freePCT = (100 * freeMB + sizeMB / 2) / sizeMB
call :mb2gib freeMB freeGiB & call :mb2gib sizeMB sizeGiB
echo Drive %1  %freeGiB% GB free / %sizeGiB% GB size = %freePCT%%% available  (= %freeB% / %sizeB%) >> output.txt
goto :eof

:mb2gib
@rem double 1000/1024 mb->mib correction
set/a %2 = (125 * ((125 * %1 + 64) / 128) + 64) / 128
@rem 1/1024 mib->gib conversion
set/a %2 = (%2 + 512) / 1024