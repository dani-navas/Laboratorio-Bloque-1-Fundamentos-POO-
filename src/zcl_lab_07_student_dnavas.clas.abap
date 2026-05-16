************************zcl_lab_07_student_dnavas*********************
CLASS zcl_lab_07_student_dnavas DEFINITION  PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.

    DATA birth_date TYPE zdate READ-ONLY .

    METHODS set_birth_date IMPORTING i_birth_date TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_07_student_dnavas IMPLEMENTATION.
  METHOD set_birth_date.
    birth_date = i_birth_date.
  ENDMETHOD.
ENDCLASS.

