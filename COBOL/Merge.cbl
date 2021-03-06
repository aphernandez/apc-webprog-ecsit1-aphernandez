       IDENTIFICATION DIVISION.
       PROGRAM-ID. MergeFiles.
       AUTHOR. MICHAEL COUGHLAN.


       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT StudentFile ASSIGN TO "STUDENTS.DAT"
             ORGANIZATION IS LINE SEQUENTIAL.

       SELECT InsertionsFile ASSIGN TO "TRANSINS.DAT"
             ORGANIZATION IS LINE SEQUENTIAL.

       SELECT NewStudentFile    ASSIGN TO "STUDENTS.NEW"
             ORGANIZATION IS LINE SEQUENTIAL.

       SELECT WorkFile ASSIGN TO "WORK.TMP".

       DATA DIVISION.
       FILE SECTION.
