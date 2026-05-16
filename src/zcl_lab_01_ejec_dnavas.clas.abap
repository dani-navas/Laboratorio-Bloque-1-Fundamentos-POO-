CLASS zcl_lab_01_ejec_dnavas DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_01_ejec_dnavas IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA l_age TYPE i.

    DATA(lr_person) = NEW zcl_lab_04_person_dnavas( ).

    lr_person->set_age( age = 38 ).
    lr_person->get_age( IMPORTING age = l_age ).
    out->write( l_age ).

    DATA l_flight TYPE c LENGTH 1.
    DATA(lr_flight) = NEW zcl_lab_05_flight_dnavas( ).
    lr_flight->get_flight( EXPORTING i_carrier_id = 'AA'
        RECEIVING ev_flight = l_flight  ).
    out->write( |Compañia encontrada: { l_FLIGHT } | ).

    DATA ms_objects TYPE zcl_lab_06_elements_dnavas=>ty_elem_objects.
    DATA(lr_elements) = NEW zcl_lab_06_elements_dnavas( ).
    lr_elements->set_object( CHANGING ms_objects = ms_objects ).
    out->write( ms_objects ).

    out->write( 'Monedas:' ).
    out->write( |Euro: { zcl_lab_06_elements_dnavas=>cs_constants-currency_eur } | ).
    out->write( |Dólar USA: { zcl_lab_06_elements_dnavas=>cs_constants-currency_usd } | ).
    out->write( |Yenes: { zcl_lab_06_elements_dnavas=>cs_constants-currency_jpy } | ).
    out->write( |Dóla Australiano: { zcl_lab_06_elements_dnavas=>cs_constants-currency_aud } | ).

*    DATA(lr_student) = NEW zcl_lab_07_student_dnavas( ).
*    lr_student->set_birth_date( i_birth_date = '20260101' ).
*    lr_student->

    DATA(lr_account) = NEW zcl_lab_09_account_dnavas( ).
    lr_account->set_iban( iban = 'ESXX2XXXX4184XXXXXXX7XXX' ).
    lr_account->get_iban( IMPORTING iban = DATA(l_iban) ).
    out->write( |IBAN: { l_iban } | ) .

  ENDMETHOD.
ENDCLASS.

