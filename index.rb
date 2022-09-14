require 'sinatra'
require 'stripe'

STRIPE_SECRET_KEY = "sk_test_51IVvoGGpCUdxdLKw0LxioK1K3uR2b2tIZXIb3rP7tfotzdtPR7x5hINtPmm1EeIMdZpQRqu4SZgQsC30F62bsBPM00GZ97nIca"
SUBSCRIPTION_PRICE_ID = "price_1IVvz3GpCUdxdLKwnHD5YcfO"

# gem install sinatra
# gem install stripe
# ruby index.rb
# http://localhost:4567
get '/' do
  erb :index, :locals => {:get_checkout_session_id => get_checkout_session_id}
end

private

def get_checkout_session_id
  # YOUR CODE HERE
  # Subscriptions with Stripe Checkout: https://stripe.com/docs/billing/subscriptions/checkout
  "your_session_id"
end
