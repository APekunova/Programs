PROGRAM Test(INPUT, OUTPUT);
VAR
  Ch, BFlag: CHAR;
BEGIN
  BFlag := 'F';
  Ch := '!';
  WHILE (NOT EOLN) AND (Ch <> '.')
  DO
    BEGIN
      IF (Ch = 'B') OR (Ch = 'b')
      THEN
        BEGIN
          WHILE ((Ch <> 'N') AND (Ch <> 'n')) AND (NOT EOLN)
          DO
            BEGIN
              WRITE(Ch);
              READ(Ch)
            END;
          BFlag := 'T'
        END;
      IF ((Ch = ' ') OR (Ch = ';')) AND (BFlag = 'T')
      THEN
        BEGIN
          WHILE ((Ch = ' ') OR (Ch = ';')) AND (NOT EOLN)
          DO
            BEGIN
              IF Ch = ';'
              THEN
                WRITE(';');
              READ(Ch)
            END;
          IF (Ch <> '(')
          THEN
            WRITELN;
          IF ((Ch <> 'E') AND (Ch <> 'e')) AND (Ch <> '(')
    	  THEN
            WRITE('  ')
        END;
      IF Ch = '('
      THEN
        BEGIN
          WHILE (Ch <> ')') AND (NOT EOLN)  
          DO
            BEGIN
              IF Ch <> ' '
              THEN
                WRITE(Ch);
              IF Ch = ','
              THEN
                WRITE(' ');
              READ(Ch)
            END
        END;
      IF (Ch <> '(') AND (Ch <> ';') AND (Ch <> ' ') AND (Ch <> '!') AND (BFlag = 'T')
      THEN
        WRITE(Ch);
      IF NOT EOLN
      THEN
        READ(Ch)
    END;
    IF Ch <> '!'
    THEN
      WRITELN(Ch)
END.
