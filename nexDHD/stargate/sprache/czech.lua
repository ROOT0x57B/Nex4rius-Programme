-- pastebin run -f YVqKFnsP
-- nexDHD von Nex4rius
-- https://github.com/Nex4rius/Nex4rius-Programme/tree/master/nexDHD
-- translation by iamceph

local sprachen = {
  dezimalkomma              = true,
  pruefeKomponenten         = "Kontrola komponentu" .. "\n",
  redstoneOK                = "- Redstone Card        ok - voltene",
  redstoneFehlt             = "- Redstone Card        chybi - voltene",
  InternetOK                = "- Internet             ok - voltene",
  InternetFehlt             = "- Internet             chybi - voltene",
  SensorOK                  = "- World Sensor         ok - voltene",
  SensorFehlt               = "- World Sensor         chybi - voltene",
  gpuOK2T                   = "- GPU Tier2            ok",
  gpuOK3T                   = "- GPU Tier3            ok - Tier2 staci",
  gpuFehlt                  = "- GPU Tier2            chybi",
  StargateOK                = "- Stargate             ok",
  StargateFehlt             = "- Stargate             chybi",
  inventory_controllerOK    = "- Inventory Controller ok" .. "\n",
  inventory_controllerFehlt = "- Inventory Controller chybi" .. "\n",
  derzeitigeVersion         = "\n" .. "aktualni verze:        ",
  verfuegbareVersion        = "\n" .. "dostupna verze:        ",
  betaVersion               = "beta verze:            ",
  aktualisierenBeta         = "\n" .. "aktualizace: beta version" .. "\n",
  aktualisierenFrage        = "\n" .. "aktualizovat? ano/ne",
  aktualisierenJa           = "\n" .. "aktualizace: ano" .. "\n",
  aktualisierenNein         = "\n" .. "odpoved: ",
  aktualisierenJetzt        = "\n" .. "\n" .. "\n" .. "aktualizuji.." .. "\n",
  aktualisierenGleich       = "Automaticka aktualizace, kdyz je stargate necinna.",
  laden                     = "\n" .. "nacitani...",
  ja                        = "ano",
  nein                      = "ne",
  hilfe                     = "pomoc",
  Adressseite               = "Stranka adres ",
  Unbekannt                 = "neznamo",
  waehlen                   = "Vytaceni ",
  energie1                  = "Energie ",
  energie2                  = ":       ",
  keineVerbindung           = "Stargate neni pripojena",
  Steuerung                 = "Ovladani",
  IrisSteuerung             = "ovladani iris ",
  an_aus                    = "Zapnuto/Vypnuto",
  AdressenBearbeiten        = "Upravit Adresy",
  beenden                   = "Odejit",
  nachrichtAngekommen       = "zprava: ",
  RedstoneSignale           = "redstone signaly",
  RedstoneWeiss             = "bila: state not Idle",
  RedstoneRot               = "cervena: prichozi pripojeni",
  RedstoneGelb              = "zluta: iris zavrena",
  RedstoneSchwarz           = "cerna: IDC prijmut",
  RedstoneGruen             = "zelena: pripojeno",
  versionName               = "Verze: ",
  fehlerName                = "<CHYBA>",
  SteuerungName             = "Informace",
  lokaleAdresse             = "Lokalni adresa:   ",
  zielAdresseName           = "Adresa destinace: ",
  zielName                  = "Jmeno destinace:  ",
  statusName                = "Status:           ",
  IrisName                  = "Iris:             ",
  IrisSteuerung             = "Ovladani Iris:    ",
  IDCakzeptiert             = "IDC:              prijmut",
  IDCname                   = "IDC:              ",
  chevronName               = "Chevron:          ",
  richtung                  = "Smer:             ",
  autoSchliessungAus        = "Automaticke zavreni: Vypnuto",
  autoSchliessungAn         = "Automaticke zavreni: ",
  zeit1                     = "Cas:              ",
  zeit2                     = "Cas:",
  atmosphere                = "Atmosfera:        ",
  atmosphere2               = "Atmosfera: ",
  atmosphereJA              = "dobra",
  atmosphereNEIN            = "nebezpecna",
  abschalten                = "Odpojit",
  oeffneIris                = "Otevrit Iris",
  schliesseIris             = "Zavrit Iris",
  IDCeingabe                = "Zadat IDC",
  naechsteSeite             = "Dalsi strana",
  vorherigeSeite            = "Predchozi strana",
  senden                    = "Odesilani: ",
  aufforderung              = "Zazadano",
  manueller                 = "Manualni",
  Eingriff                  = "Prepsat",
  stargateName              = "Stargate",
  stargateAbschalten        = "Odpojit",
  aktiviert                 = "zadan",
  zeigeAdressen             = "Ukazat Adresy",
  EinstellungenAendern      = "zmenit config",
  irisNameOffen             = "Otevrena",
  irisNameOeffnend          = "Otevirani",
  irisNameGeschlossen       = "Zavrena",
  irisNameSchliessend       = "Zavirani",
  irisNameOffline           = "Offline",
  irisKontrolleNameAn       = "Zapnuto",
  irisKontrolleNameAus      = "Vypnuto",
  RichtungNameEin           = "Prichozi",
  RichtungNameAus           = "Odchozi",
  StatusNameUntaetig        = "Cekani",
  StatusNameWaehlend        = "Vytaceni",
  StatusNameVerbunden       = "Pripojeno",
  StatusNameSchliessend     = "Zavirani",
  Neustart                  = "restart",
  IrisSteuerungName         = "Kontrola",
  ausschaltenName           = "vypinani...",
  redstoneAusschalten       = "vypnout redstone: ",
  colorfulLampAusschalten   = "vypnout colorfulLamp: ",
  verarbeiteAdressen        = "Zpracovani adresy: ",
  Hilfetext                 = "Usage: stargate [...]" .. "\n" .. "ano" .. "\t" .. "-> aktualizuje na stabilni verzi" .. "\n" .. "ne" .. "\t" .. "-> zadny update" .. "\n" .. "beta" .. "\t" .. "-> aktualizace na beta verzi" .. "\n" .. "pomoc" .. "\t" .. "-> zobrazi tuto zpravu znova",
  Sprachaenderung           = "jazyk se zmeni po restartu",
  entwicklerName            = "Vyvojar:",
  IDCgesendet               = "odesilani IDC",
  DateienFehlen             = "soubory chyby\nvse znovu stahnout?",
  speichern                 = 'pro ulozeni stisknete "Ctrl + S"',
  schliessen                = 'pro zavriti stisknete "Ctrl + W"',
  IDC                       = "Iris Deactivation Code",
  autoclosetime             = "v sekundach -- false -> nezavirat automaticky",
  RF                        = "show energy in RF instead of EU",
  autoUpdate                = "zapnout automaticke aktualizace",
  iris                      = "Zadejte Vasi Stargate adresu zde",
  keinIDC                   = "for pro zadny kod Iris",
  nichtsAendern             = "nemente nic pod timto textem",
  Update                    = "aktualizace?",
  UpdateBeta                = "beta aktualizace?",
  TastaturFehlt             = "je potreba klavesnici",
  bereitsNeusteVersion      = "zadne aktualizace nenalezeny",
  autoUpdate                = "automaticke aktualizace jsou povoleny",
  akzeptiert                = "prijmuto",
  StargateName              = "jmeno teto stargate",
  FrageStargateName         = "pojmenujte tuto stargate",
  debug                     = "pro debug",
  keineEnergie              = "<bez energie>",
  unten                     = "spodek",
  oben                      = "vrch",
  hinten                    = "zadek",
  vorne                     = "predek",
  rechts                    = "z prava",
  oder                      = "nebo",
  links                     = "z leva",
}

sprachen.side               = string.format("%s, %s, %s, %s, %s %s %s", unten, oben, hinten, vorne, rechts, oder, links)

return sprachen