Rails.application.routes.draw do
  # Route for square calculator
  get "/square/new", to: "calculators#square_form"
  post "/square/result", to: "calculators#square_result"

  # Route for square root calculator
  get "/square_root/new", to: "calculators#square_root_form"
  post "/square_root/result", to: "calculators#square_root_result"

  # Route for loan payment calculator
  get "/payment/new", to: "calculators#payment_form"
  post "/payment/result", to: "calculators#payment_result"

  # Route for random number picker
  get "/random/new", to: "calculators#random_form"
  post "/random/result", to: "calculators#random_result"
  
  root "calculators#square_form"
end
