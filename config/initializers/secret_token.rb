# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end
SampleApp::Application.config.secret_token = '133846bfa5d387c80adface0d1da0b1e09d635d35e03737af5fb345a8a1c95183b4a0732b0e2bf769a3f744d30f1f732e7b862a283121c48924411fdc107cb1f'
