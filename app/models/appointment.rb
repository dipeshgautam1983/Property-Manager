# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Appointment < ActiveRecord::Base

	validates :first_name, presence: true, length: { maximum: 60 }
	validates :last_name, presence: true, length: { maximum: 60 }
	validates :email, uniqueness: true, :presence =>true
    #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :presence => true

    validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{first_name} #{last_name}"
  end


end
