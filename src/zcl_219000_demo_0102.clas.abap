CLASS zcl_219000_demo_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_219000_DEMO_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "Wichtige ABAP-Standardtypen
    DATA i1 TYPE i. "ganze Zahl (Bsp: 42)
    DATA string1 TYPE string. "Zeichenkette dynamischer Länge (Bsp: 'Hallo Welt!')
    DATA c1 TYPE c LENGTH 6. "Zeichenkette fester Länge (Bsp: 'A1B2C3')
    DATA n1 TYPE n LENGTH 7. "Numerische Folge fester Länger (Bsp: '8172649')
    DATA d1 TYPE d. "Datum (Bsp: '20210202')
    DATA t1 TYPE t. "Zeit (Bsp: '095632')
    DATA p1 TYPE p LENGTH 16 DECIMALS 2. "gepackte Zahl (Bsp: '4266.89')
    DATA b1 TYPE c LENGTH 1. "boolscher Wahrheitswert (Bsp: 'X')

    "Deklaration variabler Datenobjekten per...
    DATA carrier_id TYPE c LENGTH 3. "...ABAP-Standardtyp
    DATA carrier_id2 TYPE /dmo/carrier_id. "...Datenelement

    "Wertzuweisung per...
    carrier_id = 'LH'. "...Zuweisungsoperator
    DATA connection_id TYPE /dmo/connection_id VALUE '0400'. "...statischer Vorbelegung
    DATA(flight_date) = '20210202'. "...Inlinedeklaration

    CLEAR carrier_id. "Initialisierung

    "Deklaration fixer Datenobjekte
    CONSTANTS co_pi TYPE p LENGTH 2 DECIMALS 2 VALUE '3.14'.
  ENDMETHOD.
ENDCLASS.
