       IDENTIFICATION DIVISION.
       PROGRAM-ID.           AS20.
       AUTHOR.               ALBERT.
       INSTALLATION.         LINUX. 
       DATE-WRITTEN.         02/12/2024.
       SECURITY.             CONFIDENTIAL.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-3083.
       OBJECT-COMPUTER. IBM-3083.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLEADOS ASSIGN TO UT-EMPLOYER.
       
       DATA DIVISION.
       FILE SECTION.
       FD  EMPLEADOS
           LABEL RECORDS ARE STANDARD
           RECORD CONTAINS 50 CHARACTERS
           BLOCK CONTAINS 0 RECORDS
           DATA RECORD IS REG-EMPLEADOS.
       01 REG-EMPLEADOS PIC X(50).

