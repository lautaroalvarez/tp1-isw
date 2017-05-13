# Pasos para cargar los packages en Pharo

## Modelo y Tests

Arrastrar sobre la imagen de Pharo abierta primero `Tp1-Ing1-Modelo-*.mcz` y luego `Tp1-Ing1-Tests-*.mcz`, y poner "Load version". Eso debería importarlos de una.

## Vista

1) Ejecutar LoadThirdPartiesPackages.st para cargar Seaside
2) Cargar el package `Tp1-Ing1-Vista-*.mcz` haciendo lo mismo que para el modelo y tests.
3) Ejecutar StartWebServer.st para levantar el servidor
4) Acceder desde un browser a http://localhost:8080/tp1
