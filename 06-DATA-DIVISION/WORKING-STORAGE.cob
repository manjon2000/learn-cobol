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

       WORKING-STORAGE SECTION.
       *> WS: Abreviatura WORKING-STORAGE 
       01  WS-AREA-A-USAR.
           05 WS-REG-EMPLEADOS.
              10 WS-NUMERO-EMP    PIC 9(05).
              10 WS-NOMBRE-EMP    PIC X(30).
              10 WS-STATUS-EMP    PIC 9(01).
              10 WS-DEPTO-EMP     PIC 9(03).
              10 WS-PUESTO-EMP    PIC 9(02).
              10 WS-SALARIO-EMP   PIC 9(07)V99.
           05 WS-LEIDOS-EMP       PIC 9(05)    VALUE ZEROS.
           05 WS-IMPRESOS         PIC 9(05)    VALUE ZEROS.
           05 WS-TOTAL-SALARIO    PIC 9(09)V99 VALUE ZEROS.
       01  WS-TITULO-1.
           05 FILLER              PIC X(28)    VALUE SPACES.
           05 WS-TIT-1            PIC X(28)    
                                  VALUE "EMPLEADOS DE LA EMPRESA".
           05 FILLER              PIC X(29)    VALUE SPACES.