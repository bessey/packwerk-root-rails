class ApplicationController < ActionController::Base
  def show
    IdentityDomain.find_account(123)
    AutoloadDomain.testing
  end
end
