module IdentityDomain
  def self.find_account(id)
    Account.new(id)
  end
end
