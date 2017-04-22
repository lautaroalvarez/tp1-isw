## DISEÑO

#### ExcavadoraRig
- profundidadPorDia
- consumoPorDia

#### CatalogoDeExcavadoras
- precioAlquilerPorDia: unaExcavadora
- minimoAlquilerDiario: unaExcavadora

#### PlanDeConstruccionDePozo
- pozoDeExtraccion
- excavadoraRig
- fechaInicioDeConstruccion
- fechaFinDeContruccion

#### PozoDeExtraccion
- plantaProcesadora
- parcelaDeYacimiento

#### PlantaProcesadora
- tiempoDeConstruccion
- costoDeConstruccion
- procesamientoDiario
- tanqueDeAlmacenamientoDeAgua
- tanqueDeAlmacenamientoDeGas

#### PlanDeConstruccionDePlanta
- plantaProcesadora
- fechaInicioDeConstruccion
- fechaFinDeConstruccion

#### ParcelaDeYacimiento
- mantoGeologico
- presionInicial
- profundidadDeReservorio
- yacimiento

#### MantoGeologico
- nombre
- resistenciaTerreno

#### Yacimiento
- tamano
- parcelas
- porcentajeAgua
- porcentajeGas
- porcentajePetroleo

#### TanqueDeAlmacenamiento
- capacidadTotal
- espacioDisponible

#### PlanDeConstrucciondeTanque
- tanque
- fechaInicioDeConstruccion
- tiempoDeConstruccion
- fechaFinDeConstruccion
- costoDeConstruccion

#### PlanDeExtraccion
- pozo
- totalProducto
- dia

#### PlanDeReinyeccion
- pozo
- tipoProducto
- totalProducto
