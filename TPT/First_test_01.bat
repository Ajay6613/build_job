REM SET TPT HOME DIRECTORY
REM -------------------------
SET TPT_HOME="C:\Program Files\TPT-18u2"
REM -------------------------
REM SYNTAX: %TPT_HOME%\tpt.exe --run build <TPT-FILE> <EXECUTION-CONFIGURATION>

REM Generate testframe step
%TPT_HOME%\tpt.exe --batchmode --run ccode "F:\TPT_Examples\01 Getting Started\01 First Example.tpt" --genTestframe "C Platform"

REM Exec-Step: F:\TPT_Examples\01 Getting Started\01 First Example.tpt 
%TPT_HOME%\tpt.exe --batchmode --run build "F:\TPT_Examples\01 Getting Started\01 First Example.tpt" "Default Configuration" --prefvar tpt.date=230224 --prefvar tpt.time=155016

REM Batch-Overview-Step: F:\TPT_Examples\01 Getting Started
%TPT_HOME%\tpt.exe --batchmode --run report "F:\TPT_Examples\01 Getting Started\testdata" --multiExec --targetdir "F:\TPT_Examples\01 Getting Started\Reports"
