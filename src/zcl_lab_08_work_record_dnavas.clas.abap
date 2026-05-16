CLASS zcl_lab_08_work_record_dnavas DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    METHODS  open_new_record IMPORTING
                               iv_date       TYPE zdate
                               iv_first_name TYPE string
                               iv_last_name  TYPE string
                               iv_surname    TYPE string OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA date       TYPE zdate.
    CLASS-DATA first_name TYPE string.
    CLASS-DATA last_name  TYPE string.
    CLASS-DATA surname    TYPE string.
ENDCLASS.


CLASS zcl_lab_08_work_record_dnavas IMPLEMENTATION.
  METHOD open_new_record.
    me->date = iv_date.
    me->first_name = iv_first_name.
    me->last_name = iv_last_name.
    me->surname = iv_surname.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

    data(lr_records) = new zcl_lab_08_work_record_dnavas( ).
    lr_records->open_new_record(
      iv_date       =  '20260515'
      iv_first_name = 'Daniel'
      iv_last_name  =  'Navas'
*      iv_surname    =
    ).
    out->write( lr_records->date ).
    out->write( lr_records->first_name ).
    out->write( lr_records->last_name ).
    out->write( lr_records->surname ).

  ENDMETHOD.
ENDCLASS.

