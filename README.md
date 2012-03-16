A simple task management app

To run:

1. Clone the repository

2. Run `bundle install` in the cloned directory

3. Migrate DB - `rake db:create db:migrate` (make necessary changes in database.yml file before migrating)

4. Run server - `rails s`

5. Access 127.0.0.1:3000

Exec `rake spec` to test the app.

Run `rake cucumber` for integrated tests.
