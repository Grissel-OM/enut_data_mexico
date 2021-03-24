**********************************************************************
* Encuesta nacional de uso de Tiempo (2019)
* Autoras: Grissel Olivera y Carolina
* Diferencias de medias y análisis gráfico del tiempo a cuidados segun el género del cuidador
**********************************************************************
use Enut_2019_base_descriptivos_graficos.dta


*FIGURA 1. Distribución de tiempos de cuidado a los integrantes del hogar según el género del cuidador
 
graph bar tc_0a5 tc_0a14 tc_15a59 tc_60a [fw=FAC_PER], over(hombre) blabel(bar, format(%12.2f))

*Figura 2. Distribución de tiempos de cuidado a personas con discapacidad en el hogar propio y a otros hogares según género del cuidador.
 
graph bar td_dis tapo_ce  [fw=FAC_PER], over(hombre) blabel(bar, format(%12.2f)) 

*Sintaxis para la Tabla de Diferencia de medias del apendice
dmout   $ti_dis $ti_0a5 $ti_0a14 $ti_15a59 $ti_60a  [fw=FAC_PER] using diff_gender, by(hombre) list csv  stat() d(2) replace
