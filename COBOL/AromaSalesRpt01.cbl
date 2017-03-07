       IDENTIFICATION DIVISION.
       PROGRAM-ID. CS4321-95-COBOL-EXAM.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT Sales-File ASSIGN TO "SALES.DAT"
                 ORGANIZATION IS LINE SEQUENTIAL.

           SELECT Work-File ASSIGN TO "SORT.TMP".

           SELECT Summary-Report ASSIGN TO "AROMASALES.RPT"
                 ORGANIZATION IS LINE SEQUENTIAL.


           SELECT Sorted-File ASSIGN TO "SORTSALE.DAT"
                 ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD Sales-File.
       01  Sales-Rec.
           88 End-Of-Sales-File    VALUE HIGH-VALUES.
           02  SF-Cust-Id              PIC X(5).
           02  SF-Cust-Name            PIC X(20).
           02  SF-Oil-Id.
                03  FILLER              PIC X.
           88 Essential-Oil   VALUE "E".
                03  SF-Oil-Name         PIC 99.
           02 SF-Unit-Size             PIC 99.
           02 SF-Units-Sold            PIC 999.
       SD Work-File.
       01 Work-Rec.
           88 End-Of-Work-File VALUE HIGH-VALUES.
       02  WF-Cust-Id              PIC X(5).
       02  WF-Cust-Name            PIC X(20).
       02  WF-Oil-Id.
            03 FILLER               PIC X.
            03 WF-Oil-Num           PIC 99.
       02 WF-Unit-Size             PIC 99.
       02 WF-Units-Sold            PIC 999.

       FD Summary-Report.
       01 Print-Line                   PIC X(64).

       FD Sorted-File.
       01 Sorted-Rec                   PIC X(33).
