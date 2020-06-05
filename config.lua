Config = {}
Config.Locale = 'en' -- Localizacion

Config.CurrencyPrefix = '€' -- Ej. € para Euros - estara despues del precio
Config.CurrencySuffix = '' -- Aqui por si la moneda tiene que ir delante, se tiene que poner un espacio al principio.

Config.Zones = {
    BikeRental = {
        Enable = true, -- Encender/apagar Bike Rental
        Name = _U('bikerental_blip'), -- Blip Name
        DrawDistance = 15.0, -- DrawDistance cuanto mas pequeño mejor.. (con esto controlamos la distancia a la que debe estar el sujeto para que se muestre el circulo)
        MarkerType = 25, -- Tipo de Marker, en esta web estan todos los tipos => https://forum.fivem.net/t/drawmarker-pictures-for-dev/99136
        ZoneSize = {x = 1.5, y = 1.5, z = 1.5}, -- Tamaño de la zona (Cuan grande es la circunferencia)
        MarkerColor = {r = 0, g = 255, b = 255}, -- Marker Color RGB
        RentetMarkerColor = {r = 255, g = 0, b = 0}, -- Marker Color cuando la bici es alquilada
        BlipSprite = 376, -- Map Marker Icono escogido de aqui => http://gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html
        BlipScale = 0.6, -- Tamaño del Map Marker
        BlipColor = 15, -- Map Marker Color
        EnableBlips = true, -- Encender/apagar Map Markers
        Free = false, -- Controla si las bicis son gratis o no
        Multiplier = 5, -- Multiplica el precio de la bici si esta no es devuelta (BTW el script se resetea cada reinicio del server)
        MenuTitle = _U('menu_title_bikerental'), -- Titulo del menu
        ItemType = 'vehicle', -- Item Type 
        MenuActions = {
            MenuTrigger = 'bikerental_menu', -- Menu Trigger
            MenuMessage = _U('press_bikerental_menu'), -- Menu de ayuda
        },
        Items = { -- Item, label, y precio usados para el menu
            {item = 'BMX', label = 'BMX', price = 20},
            {item = 'CRUISER', label = 'Cruiser', price = 15},
            {item = 'FIXTER', label = 'Race Cycle', price = 30},
            {item = 'SCORCHER', label = 'Mountain Bike', price = 25},
        },
        Pos = { -- Posiciones
            {x = -246.980, y = -339.820, z = 29.000},
            {x = -1085.78, y = -263.01, z = 36.80},
            {x = -1262.36, y = -1438.98, z = 3.45},
            {x = -248.95, y = -1528.82, z = 30.62},
            {x = 1808.5, y = 3676.96, z = 33.31},
            {x = -839.99, y = 5402.05, z = 33.64},
            {x = 208.406, y = -927.10, z = 29.70},
            {x = -203.73364257813,y = -1004.2787475586,z = 28.145511627197}
        }
    },
}