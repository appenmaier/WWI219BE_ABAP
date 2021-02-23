CLASS zcl_219000_demo_0105 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_219000_DEMO_0105 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA text TYPE string VALUE 'Hallo'.
    DATA text2 TYPE string VALUE 'Welt'.
    DATA text3 TYPE string.

    "Verknüpfen mehrerer Zeichenketten
    text3 = text && | | && text2 && '!'.
    out->write( text3 ).

    CLEAR text3.
    text3 &&= text && | |.
    text3 &&= text2 && '!'.
    out->write( text3 ).

    "Verwenden eines Zeichenketten-Templates
    CLEAR text3.
    text3 = |{ text } { text2 }!|.
    out->write( text3 ).

    "Zeichenkettenfunktionen
    SPLIT text3 AT | | INTO text text2. "Aufteilen

    DATA number_of_characters TYPE i.

    number_of_characters = strlen( text3 ). "Zeichenkettenlänge
    out->write( |Anzahl Zeichen: { number_of_characters }| ).
    text3 = to_upper( text3 ). "Umsetzen
    out->write( text3 ).

    out->write( |Länge von '   ': { strlen( '   ' ) }| ).
  ENDMETHOD.
ENDCLASS.
