      **********************
      * Author: DIOGO BISPO
      * Date: 06\05\2021
      * Purpose:
      * Tectonics: cobc
      **********************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ_ARQUIVO.
      **********************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       SELECT ARQALUNO ASSIGN TO DISK
              ORGANIZATION IS LINE SEQUENTIAL.

      **********************
       DATA DIVISION.

       FILE SECTION.
       FD ARQALUNO
          LABEL RECORD STANDARD
          VALUE OF FILE-ID IS 'ARQUIVOALUNO.TXT'.
       01 FD-ARQ-ALUNO.
           03 FD-NOME   PIC X(08).
           03 FD-IDADE  PIC 9(02).


       WORKING-STORAGE SECTION.
       01 WS-CONT    PIC 9(03).
       01 WS-EOF     PIC X(01).
       01 WS-MEDIA   PIC 9(04).
       01 WS-SOMA    PIC 9(08).

      **********************
       PROCEDURE DIVISION.
            PERFORM 1000-INICIO-PROGRAMA
            PERFORM 2000-PROCESSA-PROGRAMA
            PERFORM 3000-FINALIZA-PROGRAMA.

       1000-INICIO-PROGRAMA.
            DISPLAY 'INICIO DO PROGRAMA'
            OPEN INPUT ARQALUNO
            MOVE 0 TO WS-CONT
            EXIT.

       2000-PROCESSA-PROGRAMA.
            DISPLAY '-----------------------'
            DISPLAY 'PROCESSA PROGRAMA'
            DISPLAY '-----------------------'
            PERFORM UNTIL WS-EOF = 'S'
                READ ARQALUNO AT END
                     MOVE 'S'  TO WS-EOF
                NOT AT END
                   DISPLAY 'NOME DO ALUNO: '  FD-NOME
                   DISPLAY 'IDADE DO ALUNO: ' FD-IDADE ' ANOS'
                   DISPLAY '-----------------------'
                   ADD FD-IDADE TO WS-SOMA
                   ADD 1 TO WS-CONT
                END-READ
            END-PERFORM

            COMPUTE WS-MEDIA = WS-SOMA/WS-CONT

            EXIT.

       3000-FINALIZA-PROGRAMA.
            DISPLAY 'MEDIA DE IDADE: ' WS-MEDIA
            DISPLAY 'FINALIZA PROGRAMA'
            CLOSE ARQALUNO
            STOP RUN
            EXIT.

       END PROGRAM READ_ARQUIVO.
