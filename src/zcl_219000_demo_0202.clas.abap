CLASS zcl_219000_demo_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_219000_demo_0202 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    "Deklaration interner Tabellen
    DATA connections TYPE z219000_connections. "TYPE <Tabellentyp>
    DATA connections2 TYPE TABLE OF z219000_connection. "TYPE TABLE OF <Strukturtyp>

    "Einfügen von Datensätzen
    connections = VALUE #(
        ( carrier_id = 'LH' connection_id = '0400' airport_from_id = 'FRA' airport_to_id = 'JFK' )
        ( carrier_id = 'LH' connection_id = '0400' airport_from_id = 'FRA' airport_to_id = 'JFK' )
        ( carrier_id = 'LH' connection_id = '0401' airport_from_id = 'JFK' airport_to_id = 'FRA' ) ).

    "Erweitern interner Tabellen
    DATA connection TYPE z219000_connection.
    connection-carrier_id = 'LH'.
    connection-connection_id = '0402'.
    connection-airport_from_id = 'FRA'.
    connection-airport_to_id = 'JFK'.

    connections = VALUE #( BASE connections
        ( carrier_id = 'UA' connection_id = '3517' airport_from_id = 'JFK' airport_to_id = 'FRA' )
        ( connection ) ).

    "Lesen eines Einzelsatzes per...
    TRY.
        connection = connections[ 30 ]. "...Index
      CATCH cx_sy_itab_line_not_found INTO DATA(x).
        out->write( x->get_text( ) ).
    ENDTRY.

    IF line_exists( connections[ carrier_id = 'XX' airport_from_id = 'FRA' ] ).
      connection = connections[ carrier_id = 'XX' airport_from_id = 'FRA' ]. "...Schlüssel
    ELSE.
      out->write( |Fehler: Zeile existiert nicht| ).
    ENDIF.

    "Lesen mehrerer Datensätze

  ENDMETHOD.

ENDCLASS.
