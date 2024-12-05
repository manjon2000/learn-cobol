# WORKING-STORAGE SECTION

- Primero se definen aquí y después se usan en la lógica
- Se definen: Registro, campos, Tablas internas, Titulos, Fechas, Etc.
- Uso de varios niveles de campos (01, 05, 10, 15, Etc).
    - Es recomendado que sean en 5 en 5.
- Cláusula `VALUE` para inicializar
- Uso del `FILLER` para áreas donde no importa el nombre
- Clásula `REDEFINES` para subdividir campos

```COBOL
        *>-----------------------------
        *>          EJEMPLO
        *>-----------------------------
        WORKING-STORAGE SECTION.
        01  W-AREAS-A-USAR.
            05 W-CONTADOR-LEIDOS   PIC 9(05) VALUE ZEROS.
            05 SW-EOF              PIC X(01) VALUE "N".
            05 W-FECHA-DIA         PIC 9(06) VALUE 221116.
        01  W-REG-DEPARTAMENTO.
            05 W-CVE-DEPTO         PIC 9(03).
            05 W-DESC-DEPTO.
               10 W-DESC-CORTA     PIC X(15).
               10 W-DESC-LARGA     PIC X(35).
```