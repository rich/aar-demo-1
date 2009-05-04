# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_aar-demo-1_session',
  :secret      => '4f671122ea835bb21467554f1d0668ecba30ba26359c9c3ed573a4f07e7d01661ed75ade3cb42ccc40d88699e7af70cef61493aa5dc0d7cf941bda2bdde4c9ff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
