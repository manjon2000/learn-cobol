## 1 Caracteres permitidos

<table>
	<thead>
		<tr>
			<th>Carácter</th>
			<th>Descripción</th>
		</tr>
	</thead>
	<tbody>
			<tr>
				<td>A-Z</td>
				<td>Letras Mayúsculas (Sin la Ñ)</td>
			</tr>
			<tr>
				<td>0-9</td>
				<td>Números</td>
			</tr>
			<tr>
				<td></td>
				<td>Espacio</td>
			</tr>
			<tr>
				<td>+</td>
				<td>Signo de más</td>
			</tr>
			<tr>
				<td>-</td>
				<td>Signo de menos o guion</td>
			</tr>
			<tr>
				<td>*</td>
				<td>Asterisco</td>
			</tr>
			<tr>
				<td>/</td>
				<td>Barra inclinada</td>
			</tr>
			<tr>
				<td>$</td>
				<td>Signo de moneda</td>
			</tr>
			<tr>
				<td>. ,</td>
				<td>Punto o punto decimal y coma</td>
			</tr>
			<tr>
				<td>"</td>
				<td>Comillas</td>
			</tr>
			<tr>
				<td>( )</td>
				<td>Paréntesis izquierdo e derecho</td>
			</tr>
			   <tr>
				<td>< > </td>
				<td>Menor que y mayor que</td>
			</tr>
			<tr>
				<td> = </td>
				<td>Signo de igual</td>
			</tr>
			<tr>
				<td> : _ </td>
				<td>Dos puntos y guion bajo (SQL)</td>
			</tr>
	</tbody>
</table>

> Regla:
> 
> Las palabras que se usan en `COBOL` deben de estar formadas por caracteres de la `A-Z` y también pueden tener números del `0-9`
> 
> Se puede  separar la palabra con un guion normal (`-`)

Ejemplos: 
- **SALDO-TOTAL**
- **WS-LEIDOS2**
- **GRABADOS**

## 2 Palabras reservadas

- 417 palabras reservadas
- Es bueno saberlas porque no las podremos usar
	- `Nombres de Campos`, `Registros`, `Archivos`, `Rutinas`, etc
- Son palabras en ingles
- Ejemplos: `ACCESS`, `ADD`, `BY`, `COMPUTE`, `IF`, `EXIT`, `MOVE`, `OPEN`,  `REDEFINES`, `STOP`.
	- Nombre de campo válido: `WS-AREA`
	- Nombre de campo inválido: `AREA`
- Liga Web con todas las palabras: https://www.ibm.com/docs/es/iis/9.1?topic=words-cobol-reserved

## 3 Literales numéricas y alfanuméricas

- También llamadas constantes
- Se usan para inicializar campos
- Se inicializan con la cláusula `VALUE` en la definición de datos
	- `DATA DIVISION`: `01 CAMPO-X PIC X(11) VALUE "CURSO COBOL"`
- También con la instrucción `MOVE` en la lógica del programa
	- `PROCEDURE DIVISION`: `MOVE -729 TO CAMPO-Z`
- Máximo 18 dígitos para las literales numéricas
- Máximo 160 caracteres para las literales alfanuméricas
- Ejemplos de literales numéricas: `7298, -254, 560.42, +274.83`
- Ejemplos de literales alfanuméricas:
	- `"REPORTE DE CONTABILIDAD"`
	- `"PAGINA: "`
	- `"DIVISION DE MERCADOTECNIA NUMERO 189"`

## 4 Constates figurativas

- Se utilizan para inicializar campos
- Las 5 constantes figurativas:
	- `ZERO / ZEROS / ZEROES`
	- `SPACE / SPACES`
	- `HIGHT-VALUES`
	- `LOW-VALUES`
	- `ALL "CARACTER"`
		- Ejemplo:  `ALL *`
- Se inicializan con la clápsula `VALUE` en difinición de datos.
	- Ejemplo en `DATA DIVISION` `01 CAMPO-Y PIC X(20) VALUE SPACES`
- También con la instrucción `MOVE` en la lógica del programa
	- Ejemplo en `PROCEDURE DIVISION` `MOVE HIGHT-VALUES TO CAMPO-X`