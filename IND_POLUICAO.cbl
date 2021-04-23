      ******************************************************************
      * Author:DIOGO BISPO.
      * Date:23_04_21.
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INDICEPOLUICAO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 INDPOL      PIC 9(01)V9(2).
       01 TEXTO        PIC X(80).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DIGITE O INDICE DE POLUICAO"
            ACCEPT INDPOL

            IF INDPOL < 0.25
                DISPLAY 'ACEITAVEL'
            ELSE
                IF INDPOL >= 0.3 AND INDPOL < 0.4
                    DISPLAY 'INTIME GRUPO 1 A SUSPENDER ATIVIDADES'

                ELSE
                IF INDPOL >=0.4 AND INDPOL < 0.5
                    DISPLAY 'INTIME GRUPO 1 E 2 A SUSPENDER ATIVIDADES'

                 ELSE
                     DISPLAY 'INTIME TODOS OS GRUPO SUSPENDER ATIVIDADE'


                  END-IF
            END-IF
            STOP RUN.
       END PROGRAM INDICEPOLUICAO.
