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


class Apartment < ActiveRecord::Base
	


validates :apartmentnumber, presence: true, uniqueness: true
validates :apartmenttype, presence: true

validates :status, presence: true, inclusion: { in: %w(Available Occupied), message: "%{value} is not a valid status. Status should be either Available, or Occupied." }
status_list=["Available", "Occupied"]
validates :status, presence: true ,:inclusion => {:in => status_list}
# validates :rent, presence: true     

belongs_to :property, class_name: "Property", foreign_key: "property_id"
#has_many :payments, class_name: "Payment", foreign_key: "apartment_id"
#has_many :leases, class_name: "Lease" , foreign_key: "apartment_id"

#has_many :tenants, through: :leases
belongs_to :tenant, class_name: "Tenant", foreign_key: "tenant_id"

end
