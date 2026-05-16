***************zcl_lab_06_elements_dnavas ****************************
CLASS zcl_lab_06_elements_dnavas DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.

    CONSTANTS:BEGIN OF cs_constants,
                currency_eur TYPE string VALUE 'EUR',
                currency_usd TYPE string VALUE 'USD',
                currency_jpy TYPE string VALUE 'JPY',
                currency_aud TYPE string VALUE 'AUD',
              END OF cs_constants.

    TYPES:BEGIN OF ty_elem_objects,
            class     TYPE string,
            instace   TYPE string,
            reference TYPE string,
          END OF ty_elem_objects.

    METHODS set_object CHANGING ms_objects TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_06_elements_dnavas IMPLEMENTATION.
  METHOD set_object.
    ms_objects-class = 'Class'.
    ms_objects-instace = 'Instance'.
    ms_objects-reference = 'Reference'.
  ENDMETHOD.
ENDCLASS.


