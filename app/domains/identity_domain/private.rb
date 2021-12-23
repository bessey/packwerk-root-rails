module IdentityDomain
  Account = Struct.new(:id)

  def test
    # I'm allowed to reference this even though its defined outside my package's root, because it does belong
    # to my package in reality
    IdentityDomain.find_account(321)
    # But this fails the check
    BrokenDomain.find_account(321)
  end
end
