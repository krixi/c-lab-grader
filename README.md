#README

This repository contains the code for a program that will grade a student's c program by compiling it, running it with various different inputs, and expecting a specific output for each input. 

The repository contains the following pieces:

- `/grade`                -> Top level shell script, downloaded by students once.
- `/labN/`                -> Lab specific folders that each contain a similar structure:
- `/labN/grade_labN`      -> script that is to be provided one parameter, the path to the C file to grade.
- `/labN/tests/`          -> directory of .txt files, each of which is provided as input on the command line
- `/labN/tests/results/`  -> directory of test results, with names corresponding to the test that was run. 

## Usage
The way this works, anyone that wants to use it will download the top-level 'grade' script one time.
It requires two parameters: The name of the lab, and the file or folder to grade. 
To run the script, call it like this:
        
        ./grade lab1 joehler_marissa_lab1.c
        
This call will fetch the files required to grade lab1, and then run the lab specific grading script against the input file.

If the input path is a folder instead of a file, the script will simply run the lab specific grading script against each file in the folder in turn. 

The output of this program will be a folder, for example, `lab1_results`, containing a .csv file with all of the grades for all the labs examined, and a .log file for anyone that did not get a perfect score. 


