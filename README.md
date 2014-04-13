DATABASE FROM SCRATCH
=====================

SETUP

1. Clone this repository to your local environment
1. Run the database creation script: `psql postgres -U your_username -f scripts/create_database.sql`
1. Run the migrations:
 * For test database: `sequel -m migrations postgres://your_username:password@localhost/database_from_scratch_test`
 * For development database: `sequel -m migrations postgres://your_username:password@localhost/database_from_scratch_development`
1. Do `rspec spec` to run tests
1. Do `rerun rackup` to start the local server
  * The rerun gem will automatically restart the server when it detects changes in any ruby files.