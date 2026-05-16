*****************zcl_lab_09_account_dnavas**************************
CLASS zcl_lab_09_account_dnavas DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.

  METHODS set_iban IMPORTING iban type string.
  METHODS get_iban EXPORTING iban type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
  data iban TYPE string.
ENDCLASS.

CLASS zcl_lab_09_account_dnavas IMPLEMENTATION.
  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.
  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.
ENDCLASS.

