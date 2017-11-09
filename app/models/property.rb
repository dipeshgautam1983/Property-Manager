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


class Property < ActiveRecord::Base
	belongs_to :property_manager, class_name: "PrpopertyManager", foreign_key: "property_manager_id"
	has_many   :apartments, class_name: "Apartment", foreign_key: "property_id"
	validates  :propertyname, length: {maximum: 250 } , presence:true
	validates  :propertyaddress, length: {maximum: 250} , presence:true
	validates  :propertyowner, length: {maximum: 250} , presence:true 

end
