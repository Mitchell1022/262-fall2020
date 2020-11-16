# CS 262 Monopoly Webservice -- Heroku

The base code used is from [Monopoly-service](https://github.com/calvin-cs262-organization/monopoly-project)

The heroku serivce is 


 https://afternoon-hollows-25429.herokuapp.com/

Active URL's are:

https://afternoon-hollows-25429.herokuapp.com/playerGame

https://afternoon-hollows-25429.herokuapp.com/playerGame/7

https://afternoon-hollows-25429.herokuapp.com/playerGame/gameId/2

https://afternoon-hollows-25429.herokuapp.com/playerGame/gameId/3

All of them are nullipotent because none of them are changing anything, merely reading.
In addition, none or indempotent as you can call them once or many times, and it does not change anything.


The service is restful because the state never changes, it uses HTTP to fetch data from requests,
it also requests data with structures URL's which is another component of REST.
Finally requests are made through a URI that returns a JSON object.

Yes because the format of the data must be changed into a JSON object. It is fetched, then
combined in order to fetch the data.
