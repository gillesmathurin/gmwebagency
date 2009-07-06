# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gmwebagency_session',
  :secret      => 'c40659f79451a6887427d8d3793f4c85f879a1b58cb3baed51a4a36233e1e8a2a977c50dc3d676d8d3443bbb3940fc9509823d33ce9f04392b95c9896e97b33b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
