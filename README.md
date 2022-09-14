# README
## Teachers Who Share App - Backend
# API Docs
## GET /users

Get info for current user

```json
{
    "username": "my_user",
    "email": "My Email",
    "id" : 1234
}
```

## POST /users

Create a new user:

```json
{
    "user": {
        "username": "my_user",
        "password": "my_pass",
        "email": "My Email"
    }
}
```
and returns the user object

## POST /login

Accepts a JSON object with username and password:

```json
{
    "user": {
      "username": "my_user",
      "password": "my_pass"
    }
}
```
Returns a JSON object with the logged in user informations:

```json
{
    "username": "my_user",
    "email": "My Email",
    "id": "12345"
}
```
or an error message if the username or password is incorrect:

```json
{
    "message": "Invalid username or password"
}
```