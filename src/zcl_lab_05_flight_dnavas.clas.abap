*****************zcl_lab_05_flight_dnavas**************************
CLASS zcl_lab_05_flight_dnavas DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.

METHODS get_flight    IMPORTING i_carrieR_id   TYPE /dmo/flight-carrier_id
                         RETURNING VALUE(ev_flight) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA L_carrieR_id TYPE /dmo/flight-carrier_id.
ENDCLASS.

CLASS zcl_lab_05_flight_dnavas IMPLEMENTATION.
  METHOD get_flight.
    SELECT SINGLE carrieR_id FROM /dmo/flight
    WHERE carrieR_id = @i_carrier_id INTO @me->l_carrier_id.
    IF sy-subrc = 0.
      ev_flight = 'X'.
    ELSE.
      ev_flight = ''.
    ENDIF.
  ENDMETHOD.
ENDCLASS.

