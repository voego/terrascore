Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_5nnvKeBpxBZBYK6bImvIFWC700cgc3DWEn'],
  secret_key:      ENV['sk_test_UShicxRrGp5VPiaHmSCe2NBW00KizYfOAo']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
