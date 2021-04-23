      ******************************************************************
      * Author: DIOGO BISPO.
      * Date: 15_04_21
      * Purpose:
      * Tectonics: NONE
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATAEHORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 DATAHORA.
           02 ANO PIC 9(4).
           02 MES PIC 9(2).
           02 DIA PIC 9(2).
           02 HOR PIC 9(2).
           02 MIN PIC 9(2).
           02 SEG PIC 9(2).
       PROCEDURE DIVISION.
           MOVE FUNCTION CURRENT-DATE TO DATAHORA

           DISPLAY 'DATA E HORA: '
           DATAHORA(1:4)'/'DATAHORA(5:2)'/'DATAHORA(7:2)

           DISPLAY 'FMT BRA: ' DIA '/' MES '/' ANO

           DISPLAY 'DATA E HORA '
           DATAHORA(9:2)':'DATAHORA(11:2)':'DATAHORA(13:2)

           DISPLAY 'FMT HORA: ' HOR':'MIN':'SEG


           GOBACK.
       END PROGRAM DATAEHORA.
