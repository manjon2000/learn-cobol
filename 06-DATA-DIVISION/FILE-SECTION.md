# FILE SECTION

- FD (File Description) <NOMBRE ARCHIVO> (Tiene que ser el mismo nombre insertado en el `SELECT`)
    - `LABEL RECORDS ARE STANDARD` 
    - `RECORD CONTAINS <NN> CHARACTERS`
    - `BLOCK CONTAINS <MM> RECORDS`
    - `DATA RECORD IS <NOMBRE-DEL-REGISTRO>`

    - Nivel 01 con el nombre del registro
        - Cláusula `PICTURE (PIC)`
            - Tipos de datos (9. X. A)
                - 9: Si es un tipo de dato númerico
                - X: Si es alfanúmerico
                - A: Si es alfabético
            - Longitud (entre paréntesis)

```COBOL
       *> --------------------------------
       *>            EJEMPLO
       *> --------------------------------
       
       FD DEPARTAMENTO
          LABEL RECORDS ARE STANDARD
          RECORD CONTAINS 50 CHARACTERS
          BLOCK CONTAINS 0 RECORDS
          DATA RECORD IS REG-DEPARTAMENTO.
       01 REG-DEPARTAMENTO     PIC X(50).
```
