# == Schema Information
#
# Table name: apartments
#
#  id              :integer          not null, primary key
#  apartmentnumber :string
#  apartmenttype   :string
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  property_id     :integer
#


require 'test_helper'

class ApartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
