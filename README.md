# Simple API to get list of users

Created quick and dirty API to get random users for testing python scripts

### Deploy on heroku with:

Add credentails to heroku, you should have git and heroku cli installed:

```
heroku login
heroku keys:add
```
Than create app on heroku:
```
heroku create
```
Deploy the app to heroku:
```
git push heroku master
```
Create and seed DB with sample data:
```
heroku run rails db:migrate
heroku run rails db:seed
```