CLASS zcl_lab_02_product_dnavas DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS: set_product IMPORTING product TYPE matnr,
             set_creation_date IMPORTING  creation_date TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA product TYPE matnr.
    DATA creation_date TYPE zdate.
ENDCLASS.

CLASS zcl_lab_02_product_dnavas IMPLEMENTATION.
  METHOD set_creation_date.
     me->creation_date = creation_date.
  ENDMETHOD.

  METHOD set_product.
     me->product = product.
  ENDMETHOD.
ENDCLASS.

