# == Schema Information
#
# Table name: system_users
#
#  id              :integer          not null, primary key
#  firstname       :string
#  lastname        :string
#  identification  :string
#  dob             :date
#  sex             :string
#  address         :string
#  contact         :string
#  email           :string
#  password_digest :string
#  description     :string
#  type            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


require 'test_helper'

class SystemUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test "Valid inputs for manager should be valid" do
    propertyManager = system_users(:manager)
    assert propertyManager.valid?
  end

  test "Empty first name of system should be invalid" do
    propertyManager = system_users(:manager)
    propertyManager.firstname = ""
    assert propertyManager.invalid?	
  end


  test "Email address of tenant not in format name@domain.com is invalid" do
    tenant = system_users(:tenant)
    tenant.email = "abc"
    assert tenant.invalid?
  end

 

end
