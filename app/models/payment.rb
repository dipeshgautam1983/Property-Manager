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


class Payment < ActiveRecord::Base
	
 	
    validates :amount, numericality: { greater_than_or_equal_to:50}, presence:true

    validates :type, inclusion: { in: %w(Rent Deposit ApplicationFee),
    message: "%{value} is not a valid Payment Type. Payment Type should be either Rent or Deposit or ApplicationFee" },presence:true

    validates :duemonth,inclusion: { in: %w(Jan Feb March April May June July August Sep Oct Nov Dec),
    message: "%{value} is not a valid Month. Month should be either Jan, Feb, March, April, May, June, July, August, Sep, Oct, Nov or Dec " },presence:true
    
    validates :comment, length: { maximum: 250 },allow_blank: true
    #belongs_to :apartment
end
