require "./lib/custom_domain_constraint"

Rails.application.routes.draw do
  devise_for :users

  constraints CustomDomainConstraint do
    root :to => 'pages#show'
  end

end
