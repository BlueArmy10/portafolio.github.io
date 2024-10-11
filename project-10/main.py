import folium 
import pandas as pd

data = pd.read_csv("punto_de_interes.txt")
latitudes = list(data["Latitud"])
longitudes = list(data["Longitud"])
nombres = list(data["Nombre"])
tipos = list(data["Tipo"])

def color_producer(categoria):
    if categoria == "Monumento":
        return "blue"
    else:
        return "green"

map = folium.Map(location=[40.4637, -3.7492], zoom_start=6, tiles="OpenStreetMap")

provincias = [
   # Andalucía 
    {"nombre": "Almería", "coordenadas": [36.834, -2.4637], "mensaje": "¿Sabías que aquí se filmaron 'Juego de Tronos' y 'El Bueno, el Feo y el Malo'?", "color": "green"},
    {"nombre": "Cádiz", "coordenadas": [36.5164, -6.2833], "mensaje": "La playa más ancha de Europa se encuentra en la provincia de Cádiz.", "color": "green"},
    {"nombre": "Córdoba", "coordenadas": [37.8847, -4.7792], "mensaje": "¡Cuidado! En Córdoba se encuentra la mayor concentración de patios en flor de España.", "color": "green"},
    {"nombre": "Granada", "coordenadas": [37.1789, -3.6005], "mensaje": "¿Conoces la leyenda de la llorona de la Alhambra? Un amor eterno que perdura.", "color": "green"},
    {"nombre": "Huelva", "coordenadas": [37.2614, -6.9447], "mensaje": "La primera tierra de Europa que vio el Nuevo Mundo, gracias a Colón.", "color": "green"},
    {"nombre": "Jaén", "coordenadas": [37.7796, -3.7849], "mensaje": "¡El olivo es rey aquí! Jaén produce el 20% del aceite de oliva mundial.", "color": "green"},
    {"nombre": "Málaga", "coordenadas": [36.7213, -4.4214], "mensaje": "Málaga es la cuna de Picasso y ¡también del gazpacho!", "color": "green"},
    {"nombre": "Sevilla", "coordenadas": [37.3886, -5.9823], "mensaje": "En Sevilla, la Feria de Abril se celebra con más de 1 millón de rebujitos.", "color": "green"},

    # Aragón
    {"nombre": "Huesca", "coordenadas": [42.1401, -0.4089], "mensaje": "Huesca tiene el Parque Nacional de Ordesa, un paraíso para los montañeros.", "color": "lightgray"},
    {"nombre": "Teruel", "coordenadas": [40.3457, -1.1064], "mensaje": "Teruel existe, y tiene un amor tan famoso como el de Romeo y Julieta.", "color": "lightgray"},
    {"nombre": "Zaragoza", "coordenadas": [41.6488, -0.8891], "mensaje": "El Pilar tiene un misterio: ¿cuántas palomas hay en su plaza?", "color": "lightgray"},

    # Asturias 
    {"nombre": "Asturias", "coordenadas": [43.3619, -5.8494], "mensaje": "En Asturias, hay más de 300 queserías artesanales, ¡que viva la sidra!", "color": "blue"},

    # Baleares 
    {"nombre": "Islas Baleares", "coordenadas": [39.6953, 3.0176], "mensaje": "Las playas de Formentera son consideradas las más bellas de Europa.", "color": "orange"},

    # Canarias 
    {"nombre": "Las Palmas", "coordenadas": [28.1235, -15.4363], "mensaje": "¡Las Palmas tiene el mejor clima del mundo, según la ONU!", "color": "beige"},
    {"nombre": "Santa Cruz de Tenerife", "coordenadas": [28.4636, -16.2518], "mensaje": "El Carnaval de Santa Cruz es uno de los más grandes del mundo.", "color": "beige"},

    # Cantabria 
    {"nombre": "Cantabria", "coordenadas": [43.1828, -3.9878], "mensaje": "¿Sabías que la Cueva de Altamira tiene pinturas que datan de hace 36,000 años?", "color": "black"},

    # Castilla y León 
    {"nombre": "Ávila", "coordenadas": [40.6566, -4.6818], "mensaje": "Ávila es la ciudad con más iglesias por kilómetro cuadrado de España.", "color": "lightblue"},
    {"nombre": "Burgos", "coordenadas": [42.3439, -3.6969], "mensaje": "La catedral de Burgos es una joya del gótico español, ¡no te la pierdas!", "color": "lightblue"},
    {"nombre": "León", "coordenadas": [42.5987, -5.5671], "mensaje": "El Botillo de León es un manjar que no puede faltar en tu visita.", "color": "lightblue"},
    {"nombre": "Palencia", "coordenadas": [42.0095, -4.5284], "mensaje": "Palencia alberga la única catedral sin torre de España.", "color": "lightblue"},
    {"nombre": "Salamanca", "coordenadas": [40.9701, -5.6635], "mensaje": "La Universidad de Salamanca, la más antigua de España, fue fundada en 1218.", "color": "lightblue"},
    {"nombre": "Segovia", "coordenadas": [40.9429, -4.1088], "mensaje": "El Acueducto de Segovia tiene más de 2,000 años de historia, ¡impecable!", "color": "lightblue"},
    {"nombre": "Soria", "coordenadas": [41.7640, -2.4688], "mensaje": "Soria es la provincia con menos población de España, pero ¡llena de encanto!", "color": "lightblue"},
    {"nombre": "Valladolid", "coordenadas": [41.6523, -4.7245], "mensaje": "Valladolid fue la capital de España durante el reinado de Felipe II.", "color": "lightblue"},
    {"nombre": "Zamora", "coordenadas": [41.5037, -5.7443], "mensaje": "Zamora es famosa por su Semana Santa y tiene más de 20 iglesias románicas.", "color": "lightblue"},

    # Castilla-La Mancha 
    {"nombre": "Albacete", "coordenadas": [38.9943, -1.8585], "mensaje": "El cuchillo de Albacete es conocido en todo el mundo por su calidad.", "color": "purple"},
    {"nombre": "Ciudad Real", "coordenadas": [38.9846, -3.9272], "mensaje": "Aquí se encuentra el Parque Nacional de las Tablas de Daimiel.", "color": "purple"},
    {"nombre": "Cuenca", "coordenadas": [40.0704, -2.1374], "mensaje": "Las casas colgantes de Cuenca son un espectáculo visual.", "color": "purple"},
    {"nombre": "Guadalajara", "coordenadas": [40.6333, -3.1669], "mensaje": "El Palacio del Infantado es una joya del renacimiento.", "color": "purple"},
    {"nombre": "Toledo", "coordenadas": [39.8628, -4.0273], "mensaje": "Toledo es una ciudad donde las tres culturas (cristiana, musulmana y judía) se unen.", "color": "purple"},

    # Cataluña 
    {"nombre": "Barcelona", "coordenadas": [41.3851, 2.1734], "mensaje": "La Sagrada Familia, de Gaudí, aún está en construcción después de más de 140 años.", "color": "red"},
    {"nombre": "Girona", "coordenadas": [41.9831, 2.8249], "mensaje": "Girona tiene el mejor gelato del mundo, ¡y es un hecho!", "color": "red"},
    {"nombre": "Lleida", "coordenadas": [41.6176, 0.6200], "mensaje": "Lleida cuenta con un rico patrimonio agrícola, ¡y sus viñedos son famosos!", "color": "red"},
    {"nombre": "Tarragona", "coordenadas": [41.1189, 1.2445], "mensaje": "El anfiteatro romano de Tarragona se asoma al mar Mediterráneo.", "color": "red"},

     # Comunidad Valenciana 
    {"nombre": "Alicante", "coordenadas": [38.3452, -0.4810], "mensaje": "Las Hogueras de San Juan de Alicante marcan el inicio del verano con fuego y fiesta.", "color": "darkred"},
    {"nombre": "Castellón", "coordenadas": [39.9864, -0.0513], "mensaje": "Castellón cuenta con un litoral de 120 kilómetros de playas y calas.", "color": "darkred"},
    {"nombre": "Valencia", "coordenadas": [39.4699, -0.3763], "mensaje": "La paella valenciana es famosa en todo el mundo, ¡y este es su hogar!", "color": "darkred"},

    # Comunidad de Madrid 
    {"nombre": "Madrid", "coordenadas": [40.4168, -3.7038], "mensaje": "El kilómetro cero de todas las carreteras de España está en Madrid.", "color": "pink"},

    # Extremadura
    {"nombre": "Badajoz", "coordenadas": [38.8794, -6.9707], "mensaje": "El Carnaval de Badajoz es uno de los más importantes de España.", "color": "lightgreen"},
    {"nombre": "Cáceres", "coordenadas": [39.4767, -6.3722], "mensaje": "Cáceres es Patrimonio de la Humanidad por su ciudad amurallada.", "color": "lightgreen"},

    # Galicia 
    {"nombre": "A Coruña", "coordenadas": [43.3623, -8.4115], "mensaje": "La Torre de Hércules, el faro más antiguo del mundo, está en A Coruña.", "color": "cadetblue"},
    {"nombre": "Lugo", "coordenadas": [43.0125, -7.5550], "mensaje": "Lugo tiene una muralla romana intacta de más de 2,000 años.", "color": "cadetblue"},
    {"nombre": "Ourense", "coordenadas": [42.3389, -7.8639], "mensaje": "Ourense es famosa por sus aguas termales naturales.", "color": "cadetblue"},
    {"nombre": "Pontevedra", "coordenadas": [42.4333, -8.6444], "mensaje": "En Pontevedra, ¡los coches están casi prohibidos en el casco antiguo!", "color": "cadetblue"},

    # La Rioja 
    {"nombre": "La Rioja", "coordenadas": [42.2871, -2.5396], "mensaje": "La Rioja es famosa por sus vinos, ¡de los mejores del mundo!", "color": "white"},

    # Murcia 
    {"nombre": "Murcia", "coordenadas": [37.9922, -1.1307], "mensaje": "Murcia es la huerta de Europa, gracias a su clima ideal para la agricultura.", "color": "darkpurple"},

    # Navarra 
    {"nombre": "Navarra", "coordenadas": [42.6954, -1.6761], "mensaje": "Pamplona es mundialmente conocida por los Sanfermines y sus encierros.", "color": "lightgray"},

    # País Vasco 
    {"nombre": "Álava", "coordenadas": [42.8499, -2.6729], "mensaje": "Vitoria-Gasteiz es la ciudad más verde de Europa.", "color": "gray"},
    {"nombre": "Gipuzkoa", "coordenadas": [43.3128, -1.9812], "mensaje": "El Festival de Cine de San Sebastián es de los más prestigiosos del mundo.", "color": "gray"},
    {"nombre": "Bizkaia", "coordenadas": [43.2630, -2.9350], "mensaje": "El Puente Colgante de Bizkaia es Patrimonio de la Humanidad.", "color": "gray"},

    # Ceuta y Melilla 
    {"nombre": "Ceuta", "coordenadas": [35.8894, -5.3198], "mensaje": "Ceuta, la ciudad de las siete culturas y puertas a África.", "color": "darkgreen"},
    {"nombre": "Melilla", "coordenadas": [35.2923, -2.9381], "mensaje": "Melilla tiene uno de los conjuntos modernistas más grandes fuera de Barcelona.", "color": "darkgreen"},
]

fg1 = folium.FeatureGroup(name="Provincias")
for provincia in provincias:
    fg1.add_child(folium.Marker(
        location=provincia["coordenadas"], 
        popup=provincia["mensaje"],
         icon=folium.Icon(color=provincia["color"]),
    ))

fg2 = folium.FeatureGroup(name="Puntos de interés")
for lat, lon, nombre, tipo in zip(latitudes, longitudes, nombres, tipos):
    fg2.add_child(folium.Marker(
        location=([lat, lon]), 
        popup=nombre, 
        icon=folium.Icon(color_producer(tipo),  icon='star'),
    ))

fg3 = folium.FeatureGroup(name="Población")
fg3.add_child(folium.GeoJson(data=open('world.json', 'r', encoding='utf-8-sig').read(), 
style_function=lambda x: {'fillColor': 'green' if x['properties']['POP2005'] < 10000000 
else 'orange' if 1000000 <= x['properties']['POP2005'] < 20000000 else 'red' , 'color': 'black', 'weight': 1}))



map.add_child(fg1)
map.add_child(fg2)
map.add_child(fg3)
map.add_child(folium.LayerControl())
map.save("index.html")