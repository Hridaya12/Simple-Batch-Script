@ECHO OFF
echo                   Welcome to Batch Script Program
echo Name: Hridaya Bhattarai
echo Student Id: 2065693

:hridaya
set /p run="Hello, You want to create a directory(d) or exit(e): "
if %run%==d goto directory
if %run%==e goto end
if (%run%==d) (goto directory) else (goto invalid)



:directory
set /p dirname="Please enter the name for your directory: "
md "%dirname%"
cd %dirname%
echo A directory  %dirname% has been created successfully.
set /p mores= You want to create text file and sub-directory (y/n): 
if %mores%==y goto subdirectory
if %mores%==n goto end
if (%mores%==y) (goto subdirectory) else (goto invalid)


:subdirectory

echo Creating a sub-directory inside directoy %dirname%
set /p subdirectory="Please enter the name for the sub-directory: "
md "%subdirectory%"
echo.
echo A sub directory %subdirectory% has been created inside %dirname%
echo.
set /p more1= You want create  text file(t) into directory or create again directory(d): 
if %more1%==t goto continue
if %more1%==d goto subdirectory

:continue
cd %subdirectory%
echo.
echo Now create a text file
set /p file="Please enter the name for your text file: "
echo hello > %file%.txt
echo.
echo %file% text file has been created
set /p more1= You want to rename file(r) or create again directory(d) or want more text file(t) or exit(e) : 
if %more1%==r goto rename
if %more1%==t goto num
cd..
if %more1%==d goto subdirectory
if %more1%==e goto test



:rename
echo Rename the %file% text file
echo.
set /p x="Please Rename the text file: "
ren %file%.txt %x%.txt
cd..

:test
set /p strut="Would you like to see the tree structure (y/n): "
if %strut%==y goto showtree
if %strut%==n goto end
if (%strut%==d) (goto showtree) else (goto invalid)

:showtree
cd..
tree %dirname% /f

goto end

:invalid 
echo Invalid Entry...
echo.
set /p hello=You want to get a again chance(y/n):
if %hello%==y goto hridaya
if %hello%==n goto end
if (%hello%==y) (goto hridaya) else (goto invalid)

:again
set /p more= You want to create again Directory (y/n): 
if %more%==y goto directory
if %more%==n goto end
if (%more%==y) (goto directory) else (goto invalid)

:num
echo.
echo Now create a text file
set /p file="Please enter the name for your text file: "
echo hello > %file%.txt
echo.
echo %file% text file has been created
set /p more1= You want to rename file(r) or create again directory(d) or want more text file(t) or exit(e) : 
if %more1%==r goto rename
if %more1%==t goto num
cd..
if %more1%==d goto subdirectory
if %more1%==e goto test
:end
echo Program Ends..!!!!!

PAUSE
