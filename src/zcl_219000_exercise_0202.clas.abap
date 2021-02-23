CLASS zcl_219000_exercise_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_219000_exercise_0202 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA travels TYPE z219000_travels.
    "DATA travels TYPE TABLE OF z219000_travel.

    travels = VALUE #( BASE travels
        ( travel_id = '01928463' description = 'Italien 2021' )
        ( travel_id = '19283456' description = 'Spanien 2020' )
        ( travel_id = '09172843' description = 'Berlin 2021' )
        ( travel_id = '01928463' description = 'Italien 2020' begin_date = '20200801' ) ).

    TRY.
        travels[ 2 ]-begin_date = '20200503'.
        travels[ 2 ]-end_date = '20200513'.
      CATCH cx_sy_itab_line_not_found.
    ENDTRY.

    DELETE travels WHERE begin_date IS INITIAL.

    LOOP AT travels INTO DATA(travel).
      out->write( |{ travel-travel_id } { travel-description }| ).
    ENDLOOP.
    out->write( |Anzahl Reisen: { lines( travels ) }| ).

  ENDMETHOD.

ENDCLASS.
