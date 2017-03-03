       IDENTIFICATION DIVISION.
       PROGRAM-ID.  InputSort.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT StudentFile ASSIGN TO "SORTSTUD.DAT"
             ORGANIZATION IS LINE SEQUENTIAL.
       SELECT WorkFile ASSIGN TO "WORK.TMP".


       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentDetails      PIC X(30).




       SD WorkFile.
       01 WorkRec.
        02 WStudentId       PIC 9(7).
        02 FILLER           PIC X(23).

       WORKING-STORAGE SECTION.

       01  Oils-Table.
           02  Oil-Cost-Values.
               03 FILLER               PIC X(40)
                VALUE "0041003200450050002910250055003900650075".
               03 FILLER               PIC X(40)
                VALUE "0080004400500063006500550085004812500065".
               03 FILLER               PIC X(40)
                VALUE "0060005500670072006501250085006511150105".
           02  FILLER REDEFINES Oil-Cost-VALUES.
               03 OIL-COST           PIC 99V99 OCCURS 30 TIMES.

       PROCEDURE DIVISION.
       Begin.
       SORT WorkFile ON ASCENDING KEY WStudentId
        INPUT PROCEDURE IS GetStudentDetails
        GIVING StudentFile.
       STOP RUN.


       GetStudentDetails.
       DISPLAY "Enter student details using template below."
       DISPLAY "Enter no data to end.".
       DISPLAY "Enter - StudId, Surname, Initials, YOB, MOB, DOB,
       Course, Gender"
       DISPLAY "NNNNNNNSSSSSSSSIIYYYYMMDDCCCCG"
       ACCEPT  WorkRec.
       PERFORM UNTIL WorkRec = SPACES
       RELEASE WorkRec
       ACCEPT WorkRec
       END-PERFORM.
