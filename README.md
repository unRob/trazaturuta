#API Traza Tu Ruta
versión 0.1

##Requerimientos
* Ruby >= 1.9.2p180
* Nokogiri >= 1.5.2
* HTTParty >= 0.7.8

##cache
Genera un cache de los puntos de partida posibles, la idea sería que esto nomás hiciera ingesta a una db.

Por ahora, regresa un JSON con los estados y los puntos de partida/destino posibles y los guarda en un cache para luego usar:

##ruta
Regresa la ruta entre dos puntos, usando el servicio de SCT que le saqué a su página a punta de chingadazos.

Idealmente, cada request lo habría de guardar en cache, regresándolo al usuario, y después mandar al server a hacerme un café en lo que le pregunta a SCT si la ruta ha cambiado, ya que cada request se toma su tiempo en completar.

Chance acá luego implemento algo en node+mongo ó neo4j para hacer mi propio servicio sacándo todos los puntos de SCT a través de IFAI, a ver si ahora sí le agarro el pedo a dijkstra.


##devnotes
Las tarifas vigentes de carretera están en: http://aplicaciones4.sct.gob.mx/sibuac_internet/ControllerUI?action=CmdTarifaRep1&countVias=124&radioTipoIva=2&radioSel=1&selectVia=193&selectVia=196&selectVia=1&selectVia=209&selectVia=4&selectVia=5&selectVia=19&selectVia=7&selectVia=9&selectVia=10&selectVia=12&selectVia=13&selectVia=14&selectVia=16&selectVia=115&selectVia=18&selectVia=218&selectVia=20&selectVia=21&selectVia=22&selectVia=23&selectVia=118&selectVia=8&selectVia=195&selectVia=25&selectVia=26&selectVia=27&selectVia=28&selectVia=29&selectVia=30&selectVia=6&selectVia=32&selectVia=33&selectVia=35&selectVia=36&selectVia=37&selectVia=212&selectVia=176&selectVia=199&selectVia=39&selectVia=205&selectVia=48&selectVia=40&selectVia=217&selectVia=42&selectVia=43&selectVia=45&selectVia=49&selectVia=51&selectVia=52&selectVia=54&selectVia=55&selectVia=56&selectVia=57&selectVia=58&selectVia=59&selectVia=219&selectVia=203&selectVia=60&selectVia=61&selectVia=62&selectVia=192&selectVia=65&selectVia=66&selectVia=67&selectVia=68&selectVia=64&selectVia=69&selectVia=70&selectVia=72&selectVia=73&selectVia=74&selectVia=75&selectVia=76&selectVia=77&selectVia=78&selectVia=79&selectVia=198&selectVia=80&selectVia=81&selectVia=162&selectVia=83&selectVia=84&selectVia=85&selectVia=87&selectVia=86&selectVia=88&selectVia=90&selectVia=91&selectVia=89&selectVia=92&selectVia=93&selectVia=94&selectVia=95&selectVia=96&selectVia=97&selectVia=98&selectVia=99&selectVia=100&selectVia=101&selectVia=102&selectVia=103&selectVia=104&selectVia=106&selectVia=107&selectVia=31&selectVia=109&selectVia=110&selectVia=50&selectVia=114&selectVia=180&selectVia=111&selectVia=112&selectVia=200&selectVia=119&selectVia=207&selectVia=204&selectVia=117&selectVia=120&selectVia=121&selectVia=122&selectVia=123&selectVia=124&selectVia=125

Chance agonzgo@sct.gob.mx me puede dar más info sobre el tipo de proyección or the lack thereof para poder convertir sus fakeCoords a algo que entienda el resto del mundo

Los servers de aplicaciones5-aplicaciones10 andan con "Options +Indexes", y los demås seguro tienen apps con las que pueda jugar

http://aplicaciones4.sct.gob.mx/sibuac_internet/ControllerUI?action=cmdRutaSolGeo&kml=19315%2C19341%2C24200%2C19344%2C19321%2C24202 da otro mapa, pero el kml no existe, ó a veces existe, o de plano vale verga (http://aplicaciones4.sct.gob.mx/sibuac_internet/SerTraerImagen?ruta=nullCuernavacaAcapulco.kml) Chance tiene algo que ver con ese null?