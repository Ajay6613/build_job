REM SET TPT HOME DIRECTORY
REM -------------------------
SET TPT_HOME="C:\Program Files\TPT-18u1"
REM -------------------------
REM SYNTAX: %TPT_HOME%\tpt.exe --run build <TPT-FILE> <EXECUTION-CONFIGURATION>

REM Generate testframe step
%TPT_HOME%\tpt.exe --batchmode --run ccode "C:\Users\PrathibhaG\Documents\TPT18u1 Examples\test_Automation\01 Getting Started\01 First Example.tpt" --genTestframe "C Platform"

REM Exec-Step: C:\Users\PrathibhaG\Documents\TPT18u1 Examples\test_Automation\01 Getting Started\01 First Example.tpt 
%TPT_HOME%\tpt.exe --batchmode --run build "C:\Users\PrathibhaG\Documents\TPT18u1 Examples\test_Automation\01 Getting Started\01 First Example.tpt" "Default Configuration" --prefvar tpt.date=221207 --prefvar tpt.time=115224

REM Batch-Overview-Step: C:\Users\PrathibhaG\Documents\TPT18u1 Examples\test_Automation\01 Getting Started
%TPT_HOME%\tpt.exe --batchmode --run report "C:\Users\PrathibhaG\Documents\TPT18u1 Examples\test_Automation\01 Getting Started\testdata" --multiExec --targetdir "C:\Users\PrathibhaG\Documents\TPT18u1 Examples\test_Automation\01 Getting Started"
