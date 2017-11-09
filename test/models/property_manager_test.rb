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

class PropertyManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
