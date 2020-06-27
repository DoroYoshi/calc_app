Rails.application.routes.draw do
  get "calcs/:val1/:calc/:val2" => "calcs#show"
end
