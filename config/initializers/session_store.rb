# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_umsounds_session',
  :secret      => '4339830b690df6d858a3623616160e6995294894683543f2d5e91111e074cbb48b8d71c58074e3b6c4527d14047bb2b7280f232029d7b3b1bc8b4057d4b80d86'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
