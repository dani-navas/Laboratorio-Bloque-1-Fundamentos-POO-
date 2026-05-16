**************zcl_lab_04_person_dnavas***********************
CLASS zcl_lab_04_person_dnavas DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.

  METHODS set_age IMPORTING age type i.
  METHODS get_age EXPORTING age type i.

  PROTECTED SECTION.
  PRIVATE SECTION.
  data age type i.
ENDCLASS.

CLASS zcl_lab_04_person_dnavas IMPLEMENTATION.
  METHOD get_age.
    age = me->age.
  ENDMETHOD.
  METHOD set_age.
    me->age = age.
  ENDMETHOD.
ENDCLASS.

