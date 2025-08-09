CLASS zcl_2ui5_start DEFINITION DEFERRED.
CLASS zcl_2ui5_lock DEFINITION DEFERRED.

CLASS zcl_2ui5_start DEFINITION INHERITING FROM z2ui5_test.
  PUBLIC SECTION.
    DATA text TYPE string VALUE 'call booking mask'.
    METHODS z2ui5_if_app~main                       REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_2ui5_lock DEFINITION INHERITING FROM z2ui5_test.
  PUBLIC SECTION.
    DATA check_initialized TYPE abap_bool.
    DATA varkey TYPE char120.
    METHODS z2ui5_if_app~main                       REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS initialize_view
      IMPORTING
        client TYPE REF TO z2ui5_if_client.
    METHODS set_session_stateful
      IMPORTING
        client   TYPE REF TO z2ui5_if_client
        stateful TYPE abap_bool.
ENDCLASS.
