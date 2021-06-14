Rails.configuration.stripe = {
    publishable_key: ENV['pk_test_51J2CvwKFFxjtpHcEhbTHTht7pwXzdbpTcAh7kAYiFx0hKYQoCFMXw0JlR5xTdffy0RyGiD1AxP1y17zFa4ozYWJj005rTENE6S'],
    secret_key:      ENV['sk_test_51J2CvwKFFxjtpHcEKROm303W1Nm7fjuJtAJAUOLfR3kWRh4zCX089FMvW6LA0CWDN1XvWW5E8xp2yVCUY39Bl9ne003sv3tlkv']
  }
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]