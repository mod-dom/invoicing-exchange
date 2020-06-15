# invoicing-exchange
Invoicing document exchange 

Create new funcionality for electronic invoice exchange.

## invoicing exchange user service setup

The essence of this feature is that we can define credentials for each user at the level for one or more services.

This setup page is a type list and can be used to create users with their privacy parameters.

The structure of the table itself, more precisely the primary key, is like that the same user can be defined on several rows.

Created Event Subscriber OnAfterDeleteEvent with which when user deleted on User setup page record, automatically will be deleted all related data from this table/page.

# Invoicing-exchange
Invoicing document exchange

Purpose of this feature is to enable electronic invoice exchange. 

## Invoicing exchange service setup

**Setup controls and restrictions**

There is a nessesary setup called Electronic Invoice Exchange Service Setup in the category Administration. User has to have permission to access this table (table with ID 50130).

More than one row can be entered in this setup, but just one can be Enabled (field Enabled set to true), so there can't be more rows with checked field Enabled. If you enable some row, other rows will become disabled.

There can't be a row with both Endpoint and Sandbox Endpoint fields enabled. If field Enable/Disable Sandbox End. is set to true, link in the field Sandbox Endpoint will be enabled, but the link in field Endpoint will be disabled and if field Enable/Disable Sandbox End. is set to false, link in the field Sandbox Endpoint will be disabled, but the link in field Endpoint will be enabled.

