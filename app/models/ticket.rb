# == Schema Information
#
# Table name: tickets
#
#  id                 :integer          not null, primary key
#  description        :string
#  status             :string
#  agentcomment       :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  agent_id           :integer
#  tenant_id          :integer
#  PropertyManager_id :integer
#



class Ticket < ActiveRecord::Base

    	validates :description, length: { maximum: 250 }, presence:true

    	validates :status,inclusion: { in: %w(Assigned Working Serviced New),
    	message: "%{value} is not a valid status. Status should be either Assigned, Working or Serviced." },allow_blank: true
    
    	validates :agentcomment, length: { maximum: 250 },allow_blank: true
		belongs_to :tenant
		belongs_to :agent
		belongs_to :property_manager

end
