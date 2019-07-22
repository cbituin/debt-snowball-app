# Notes:
Potential outlines for models and routes in Sinatra CRUD app.

## User model

User
- has_many Debts

User should have:
- username - string
- email - string
- password_digest - string

| HTTP VERB | ROUTE              | Action        | Used For                                               |
|---      |---                 |---            |---                                                     |
| GET     | '/users'           | index action  | index page to display all users                        |
| GET     | '/users/new'       | new action    | displays create user form                              |
| POST    | '/users'           | create action | creates one user                                  |
| GET     | '/users/:id'       | show action   | displays one user based on ID in the url          |
| GET     | '/users/:id/edit'  | edit action   | displays edit form based on ID in the url              |
| PATCH   | '/users/:id'       | update action | _modifies_ an existing user based on ID in the url|
| PUT     | '/users/:id'       | update action | _replaces_ an existing user based on ID in the url|
| DELETE  | '/users/:id'       | delete action | deletes one user based on ID in the url           |

## Debt model

Debt
- belongs_to User

User should have:
- name - string
- start_bal - float
- remain_bal - float
- payment - float
- snowball - float

| HTTP VERB | ROUTE              | Action        | Used For                                               |
|---      |---                 |---            |---                                                     |
| GET     | '/debts'           | index action  | index page to display all debts sorted by                         |
| GET     | '/debts/new'       | new action    | displays create debt form                              |
| POST    | '/debts'           | create action | creates one debt                                  |
| GET     | '/debts/:id'       | show action   | displays one debt based on ID in the url          |
| GET     | '/debts/:id/edit'  | edit action   | displays edit form based on ID in the url              |
| PATCH   | '/debts/:id'       | update action | _modifies_ an existing debt based on ID in the url|
| PUT     | '/debts/:id'       | update action | _replaces_ an existing debt based on ID in the url|
| DELETE  | '/debts/:id'       | delete action | deletes one debt based on ID in the url           |

## Potential Features

Functionality to add to UI?
- /debts shows auto calculated totals
- /debts provides visual "progress bar"
- /debts displays single debt strikethrough is remain_bal == 0
