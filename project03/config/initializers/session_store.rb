# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project03_session',
  :secret      => 'd28a0050f641784ec3f3895b05a1a64e7d6a6eb2cc8f957d06a42d320a37cd1c622712ab59f979487a4ae9060162dc8591c2a626d776f7f4b91a7fdcb79e0ed0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
