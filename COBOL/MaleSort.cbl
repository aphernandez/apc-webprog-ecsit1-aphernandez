       IDENTIFICATION DIVISION.
       PROGRAM-ID.  MaleSort.
       AUTHOR.  Michael Coughlan.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT StudentFile ASSIGN TO "STUDENTS.DAT"
		     ORGANIZATION IS LINE SEQUENTIAL.

       SELECT MaleStudentFile ASSIGN TO "MALESTUDS.DAT"
		     ORGANIZATION IS LINE SEQUENTIAL.

       SELECT WorkFile ASSIGN TO "WORK.TMP".


       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentRec      PIC X(30).
         88 EndOfFile    VALUE HIGH-VALUES.

       FD MaleStudentFile.
       01 MaleStudentRec  PIC X(30).

       SD WorkFile.
       01 WorkRec.
         02 FILLER             PIC 9(7).
         02 WStudentName       PIC X(10).
         02 FILLER             PI
