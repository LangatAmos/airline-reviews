## Airline Reviews Web App
This is a monolith app, intended to be a simple example of a CRUD app built with Ruby on Rails and React.js. It's postgresql database and a simple react frontend that can be used to interact with the database.
## This API uses:
Ruby version 2.7.4 
Rails version 7.0.4 Database postgresql

## Running it on local environment
run `bundle install` to install all dependencies then run `bundle exec rails s` to open the server and be able to request data from the database Post man can be used to fetch data from the database or interact with the database from the frontend.
To install dependencies for the frontend, run `npm install --prefix client` from the project root
and run `npm start --prefix client` on another terminal to open it on the browser.

## Tables in the database
`airlines` - collection of heroes that with various super powers 
`users` - different users registered and persisted in the database
`reviews` - collection of reviews that have been created for specific user

## seeding the database
there is a seeds.rb file in the db directory. It contains sample data for testing purposes
run `rails db:seed` to seed the database

## Serialization
For this app, active_model_serializers gem was used. gem "active_model_serializers" is inserted into the gemfile and run bundle install to install. Now we can use a generator to create a new serializer Serializers gives ability to create the exact structure for the data to expose as JSON from the api

## Endpoints
`GET /airlines` - returns a list of all available airlines in the database 
`GET /airlines/:id` - return a airline matching the specified id 
`GET /reviews` - returns a list of all available reviews including user and airline in the database `POST /reviews` - creates a review and associtates with the specified user and airline in the database

## License
Copyright (c) 2022 amos

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.