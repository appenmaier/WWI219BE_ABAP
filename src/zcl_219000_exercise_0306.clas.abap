CLASS zcl_219000_exercise_0306 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_219000_exercise_0306 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA travels TYPE TABLE OF ZC_219000_TravelWithCustomer.
    DATA customer_id TYPE /dmo/customer_id VALUE '000001'.

    SELECT FROM ZC_219000_TravelWithCustomer
     FIELDS *
     WHERE CustomerId = @customer_id
     ORDER BY BeginDate, EndDate
     INTO TABLE @travels.
    IF sy-subrc <> 0.
      out->write( |no Data| ).
      RETURN.
    ENDIF.

    LOOP AT travels INTO DATA(travel).
      out->write( |{ travel-Description }, { travel-BeginDate }, { travel-EndDate }| ).
    ENDLOOP.
*    out->write( travels ).

  ENDMETHOD.

ENDCLASS.
