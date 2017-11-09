# == Schema Information
#
# Table name: payments
#
#  id            :integer          not null, primary key
#  amount        :float
#  type          :string
#  paymentdate   :date
#  paymentstatus :boolean
#  duemonth      :string
#  comment       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  apartment_id  :integer
#  tenant_id     :integer
#


require 'test_helper'

class ApplicationFeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
