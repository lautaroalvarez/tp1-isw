1. Al criterio de construcción le pasa un yacimiento para poder sacar las parcelas. Pero el yacimiento no debería conocer las parcelas, sino que debería haber un mapa de parcelas (que se ingresa como parámetro). Cada parcela debería saber que tiene abajo un yacimiento determinado (o directamente que el mapa conozca un yacimiento).

2. De dónde salen esos "bloques"?
```
initializeConstruir: unaCantidad
	pozosEnLasParcelasObtenidasCon: unBloque
	excavadorasObtenidasCon: otroBloque
	cantidadDePozosAConstruir := unaCantidad.
	bloqueParaObtenerParcelas := unBloque.
	bloqueParaObtenerExcavadoras := otroBloque
```

3. Está bueno que al crear un plan de construcción de planta se le pase una planta? No hay nada que diferencie una completa de una en construcción. Esto lo habíamos hablado pero no quedamos en nada concreto (surgió también la idea de ponerle un estado "completo" o "en construcción" o algo así)

4. Es necesario que una planta de construcción sepa cuántos días se tardó en construirla? Mismo con su costo de construcción.

5. El pozo debería tener una presión actual, y que esta se vaya recalculando. Actualmente existe una "calculadora de presiones" que vuelve a recalcular todo cada vez que es necesario.

6. Sistema de construcción de pozos tiene:
```
  capacidadTotalDeAguaDe: unaPlantaProcesadora a: unaFecha
  capacidadTotalDeGasDe: unaPlantaProcesadora a: unaFecha
  plantasProcesadorasConstruidasAl: unaFecha
  tanquesDeAguaConstruidosAl: unaFecha
  tanquesDeGasConstruidosAl: unaFecha
  pozosConstruidosAl: unaFecha
  estaConstruido: unBien a: unaFecha
```
Si vamos día a día, estos mensajes no hacen falta.
Por ejemplo, en:
```
  capacidadTotalDeAguaDe: unaPlantaProcesadora a: unaFecha
```
uno tendría que preguntarle diréctamente a la planta y que esta tenga guardada su capacidad actual.

7. Estaría bueno que el sistema cree el pozo cuando se terminó el plan de construcción. Eso haría mas fácil buscar los pozos (no hay que filtrar nada). Y lo mismo con los rigs. Cuando termina le "devuelve" el rig. Hacer esto evitaría mensajes como:
```
estaDisponible: unaExcavadoraRig el: unaFecha
filrarBienesDeTipo: tipoDeBien construidosLuegoDe: unaFecha
pozosConstruidosAl: unaFecha
estaConstruido: unBien a: unaFecha
fechaDeFinConstruccionDe: unPozoDeExtraccion
```

8. Sistema de extracción de pozo tiene:
```
	cantidadDePozosActivosA: unaFecha
	capacidadDisponibleDeAguaDe: unaPlantaProcesadora a: unaFecha
	capacidadDisponibleDeGasDe: unaPlantaProcesadora a: unaFecha
	presionDe: unPozoDeExtraccion a: unaFecha
	volumenReservorioDe: unPozoDeExtraccion a: unaFecha
```
Todo pregunta por fechas y recalcula. Debería tenerse la información del día actual y avanzar por día.

9. La clase **ProductoDeReservorio** en dónde se usa? Vendría a ser el producto que se extrajo?

10. Está definida **CatalogoDeExcavadoras**, pero el sistema de gestión de excavadoras tiene un Diccionario **catalogo** donde maneja las excavadoras.
