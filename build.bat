@echo off

set SCRIPT_DIR=src

set "themePath=blue.qbtheme"

if exist "./tools/rcc.exe" (
  if exist "./src/resources.qrc" (
    "./tools/rcc.exe" ./src/resources.qrc -o %themePath% -binary
    @echo Compiled %themePath% binary.
  ) else (
    @echo resources.qrc file is missing.
  )
) else (
  @echo rcc.exe file is missing.
)
