CLASS zcl_219000_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_219000_exercise_0101 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA travel_id TYPE /dmo/travel_id VALUE '00000001'.
    DATA description TYPE /dmo/description VALUE 'Italien 2021'.
    DATA begin_date TYPE /dmo/begin_date.
    DATA end_date TYPE /dmo/end_date.

    begin_date = '20210809'.
    end_date = '20210828'.

    out->write( travel_id ).
    out->write( description ).
    out->write( begin_date ).
    out->write( end_date ).
  ENDMETHOD.

ENDCLASS.
