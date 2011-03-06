# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project06_session',
  :secret      => 'c59641036e1fe9da9b99906146c76c848b46b89e82953af373594f60cb0474c0d002b0ed08f7d21aa0dc5ecaf876acf46b9b0add153f539a2be5a8f904eca82d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
