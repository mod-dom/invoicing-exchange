# invoicing-exchange
Invoicing document exchange 

Create new funcionality for electronic invoice exchange.

## invoicing exchange user service setup

# Invoicing-exchange
Invoicing document exchange

Purpose of this feature is to enable electronic invoice exchange. 

## Invoicing exchange service setup

**Setup controls and restrictions**

There is a nessesary setup called Electronic Invoice Exchange Service Setup in the category Administration. User has to have permission to access this table (table with ID 50130).

More than one row can be entered in this setup, but just one can be Enabled (field Enabled set to true), so there can't be more rows with checked field Enabled. If you enable some row, other rows will become disabled.

There can't be a row with both Endpoint and Sandbox Endpoint fields enabled. If field Enable/Disable Sandbox End. is set to true, link in the field Sandbox Endpoint will be enabled, but the link in field Endpoint will be disabled and if field Enable/Disable Sandbox End. is set to false, link in the field Sandbox Endpoint will be disabled, but the link in field Endpoint will be enabled.

