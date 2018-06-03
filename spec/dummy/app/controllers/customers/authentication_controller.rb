module Customers
  class AuthenticationController < RabbitApi::AuthenticationController
    skip_before_action :authenticate_resource, only: [:destroy]
    before_action :authenticate_and_set_user, only: [:destroy]
  end
end