CLASS zcl_219000_demo_0301 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_219000_demo_0301 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA connection TYPE ZI_219000_Connection.
    DATA connections TYPE TABLE OF ZI_219000_Connection.

    DATA carrier_id TYPE /dmo/carrier_id VALUE 'LH'.
    DATA connection_id TYPE /dmo/connection_id VALUE '0400'.

    "SELECT FROM <Datenbanktabelle/Datenbankview>
    " FIELDS Feld 1, Feld 2,...
    " WHERE <Bedingung>
    " ORDER BY Feld 1, Feld 2,...
    " INTO @<Zielvariable>.
    "IF sy-subrc <> 0.
    " TODO: Fehlerbehandlung
    "ENDIF.

    "Lesen eines Einzelsatzes
    SELECT SINGLE FROM ZI_219000_Connection
     FIELDS *
     WHERE CarrierId = @carrier_id AND ConnectionId = @connection_id
     INTO @connection.
    IF sy-subrc <> 0.
      out->write( |no Data| ).
      RETURN.
    ENDIF.

    "Lesen mehrerer Datensätze
    SELECT FROM ZI_219000_Connection
     FIELDS *
     WHERE CarrierId = @carrier_id
     INTO TABLE @connections.
    IF sy-subrc <> 0.
      out->write( |no Data| ).
      RETURN.
    ENDIF.

    LOOP AT connections INTO connection.
      out->write( |{ connection-ConnectionId }| ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
