      ******************************************************************
      * Author:DIOGO
      * Date:20.04.21
      * Purpose:MEDIA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIA.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
       01 MEDIA    PIC ZZ9,99.
       01 NOTA1    PIC 9(3)V99.
       01 NOTA2    PIC 9(3)V99.
       01 NOTA3    PIC 9(3)V99.
       01 NOTA4    PIC 9(3)V99.

       01 TEXTO     PIC X(10).
       01 ENDERECO.
           02 CEP    PIC X(09).
           02 RUA    PIC X(15).
           02 CIDADE PIC X(15).
           02 PAIS   PIC X(20).
       01 DATA-NASC.
           02 DIA    PIC 9(02).
           02 MES    PIC 9(02).
           02 ANO    PIC 9(04).
       01 DATA-AUXILIAR.
           02 DIA    PIC 99.
           02 MES    PIC 99.
           02 ANO    PIC 9999.


       PROCEDURE DIVISION.
           MAIN-PROCEDURE.

           MOVE 5.5 TO NOTA1
           MOVE 6.5 TO NOTA2
           MOVE 7.0 TO NOTA3
           MOVE 8.5 TO NOTA4

           COMPUTE
               MEDIA=(NOTA1 + NOTA2 + NOTA3 + NOTA4) / 4
           END-COMPUTE

           DISPLAY '------------------------------'
           DISPLAY 'A MEDIA EH: ' MEDIA
           DISPLAY '------------------------------'
           DISPLAY "SOMATORIA DAS NOTAS SEMESTRAIS"
           DISPLAY '------------------------------'
            STOP RUN.
       END PROGRAM MEDIA.
