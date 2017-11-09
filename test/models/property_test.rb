# == Schema Information
#
# Table name: properties
#
#  id                 :integer          not null, primary key
#  propertyname       :string
#  propertyaddress    :string
#  propertyowner      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  PropertyManager_id :integer
#



require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

 test "Property Name with length greater than 250 character should be invalid" do
    propertyName = propertyname(:one)
    propertyName.propertyname = 'This is a test to see if the number of characters for the property name are still recognized properly even if the maximum length of two hundred and fifty characters has been exceeded. If, by any chance the maximum length of two hundred and fifty characters has been exceeded, the system should completely and utterly reject the property name.'
    assert propertyName.invalid?
  end

test "Property Address with length greater than 250 character should be invalid" do
    propertyAddress = propertyaddress(:one)
    propertyAddress.propertyaddress = 'This is a test to see if the number of characters for the property address are still recognized properly even if the maximum length of two hundred and fifty characters has been exceeded. If, by any chance the maximum length of two hundred and fifty characters has been exceeded, the system should completely and utterly reject the property address.'
    assert propertyAddress.invalid?
  end

test "Property Owner Name with length greater than 250 character should be invalid" do
    propertyOwner = propertyowner(:one)
    propertyOwner.propertyowner = 'This is a test to see if the number of characters for the property owner name are still recognized properly even if the maximum length of two hundred and fifty characters has been exceeded. If, by any chance the maximum length of two hundred and fifty characters has been exceeded, the system should completely and utterly reject the property name.'
    assert propertyName.invalid?
  end

end
