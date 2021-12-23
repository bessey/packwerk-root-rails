class ApplicationController < ActionController::Base
  def show
    # This is fine because its a public root
    IdentityDomain.find_account(123)
    # This is broken because the constant is not a public root as the package doesn't have one
    AutoloadDomain.testing
  end
end
