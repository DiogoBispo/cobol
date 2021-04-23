      ******************************************************************
      * Author:DIOGO BISPO.
      * Date:20_04_21
      * Purpose:
      * Tectonics: NONE
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.            CALCULAAREA.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1                PIC 9(03)V99.
       01 NUM2                PIC 9(03)V99.
       01 NUM3                PIC 9(03)V99.
       01 NUM4                PIC 9(03)V99.
       01 NUM1-QUAD           PIC 9(03)V99.
       01 NUM2-QUAD           PIC 9(03)V99.
       01 NUM3-QUAD           PIC 9(03)V99.
       01 NUM4-QUAD           PIC 9(03)V99.
       01 SOMA                PIC 9(03)V99.

      ******************************************************************
       PROCEDURE DIVISION.
            MOVE 2 TO NUM1.
            MOVE 4 TO NUM2.
            MOVE 6 TO NUM3.
            MOVE 8 TO NUM4.



            COMPUTE NUM1-QUAD = NUM1 * NUM1 END-COMPUTE.
            COMPUTE NUM2-QUAD = NUM2 * NUM2 END-COMPUTE.
            COMPUTE NUM3-QUAD = NUM3 * NUM3 END-COMPUTE.
            COMPUTE NUM4-QUAD = NUM4 * NUM4 END-COMPUTE.
            COMPUTE
               SOMA = NUM1-QUAD + NUM2-QUAD + NUM3-QUAD + NUM4-QUAD
            END-COMPUTE.

       MAIN-PROCEDURE.
            DISPLAY "QADRADO DO NUMERO1 " NUM1-QUAD.
            DISPLAY "QADRADO DO NUMERO2 " NUM2-QUAD.
            DISPLAY "QADRADO DO NUMERO3 " NUM3-QUAD.
            DISPLAY "QADRADO DO NUMERO4 " NUM4-QUAD.
            DISPLAY "SOMA DOS QUADRADOS " SOMA.
            STOP RUN.
       END PROGRAM CALCULAAREA.
