TemperateTheaterStart: db 9 ; length byte, pascal string
TemperateTheaterName: db"TEMPERATE"
TemperateTheaterMIXStart: db 8 ; length byte, pascal string
TemperateTheaterMIXName: db"TEMPERAT"
TemperateTheaterExtensionStart: db 3 ; length byte, pascal string
TemperateTheaterExtensionName: db"TEM"

SnowTheaterStart: db 4 ; length byte, pascal string
SnowTheaterName: db"SNOW"
SnowTheaterPadding: db 0,0,0,0,0
SnowTheaterMIXStart: db 4 ; length byte, pascal string
SnowTheaterMIXName: db"SNOW"
SnowTheaterMIXPadding: db 0,0,0,0
SnowTheaterExtensionStart: db 3 ; length byte, pascal string
SnowTheaterExtensionName: db"SNO"

InteriorTheaterStart: db 8 ; length byte, pascal string
InteriorTheaterName: db"INTERIOR"
InteriorTheaterPadding: db 0
InteriorTheaterMIXStart: db 8 ; length byte, pascal string
InteriorTheaterMIXName: db"INTERIOR"
InteriorTheaterExtensionStart: db 3 ; length byte, pascal string
InteriorTheaterExtensionName: db"INT"

DesertTheaterStart: db 6 ; length byte, pascal string
DesertTheaterName: db "DESERT"
DesertTheaterPadding: db 0,0,0
DesertTheaterMIXStart: db 6 ; length byte, pascal string
DesertTheaterMIXName: db"DESERT"
DesertTheaterMIXPadding: db 0,0
DesertTheaterExtensionStart: db 3 ; length byte, pascal string
DesertTheaterExtensionName: db"DES"

WinterTheaterStart: db 6 ; length byte, pascal string
WinterTheaterName: db "WINTER"
WinterTheaterPadding: db 0,0,0
WinterTheaterMIXStart: db 6 ; length byte, pascal string
WinterTheaterMIXName: db"WINTER"
WinterTheaterMIXPadding: db 0,0
WinterTheaterExtensionStart: db 3 ; length byte, pascal string
WinterTheaterExtensionName: db"WIN"

JungleTheaterStart: db 6 ; length byte, pascal string
JungleTheaterName: db "JUNGLE"
JungleTheaterPadding: db 0,0,0
JungleTheaterMIXStart: db 6 ; length byte, pascal string
JungleTheaterMIXName: db"JUNGLE"
JungleTheaterMIXPadding: db 0,0
JungleTheaterExtensionStart: db 3 ; length byte, pascal string
JungleTheaterExtensionName: db"JUN"


DesertMix dd 0
DesertMixExtra dd 0
WinterMix dd 0
WinterMixExtra dd 0
JungleMix dd 0
JungleMixExtra dd 0

str_DesertMix: db 0Ah,"desert.mix",0,0,0
str_WinterMix: db 0Ah,"winter.mix",0,0,0
str_JungleMix: db 0Ah,"jungle.mix",0,0,0
