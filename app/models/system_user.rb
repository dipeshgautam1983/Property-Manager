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


class SystemUser < ActiveRecord::Base
  has_secure_password

  validates :firstname, length: { maximum: 250 }, presence: true

  validates :lastname, length: { maximum: 250 }, presence:true
  validates :identification, length: { maximum: 250 },presence: true
  validates :dob, presence: true
  validates :sex, presence: true, inclusion: {in: 
    ['M', 'F', 'Male', 'Female', 'm', 'f', 'male',
    'female', '--'], 
    message: "%{value} is not a correct option"}
  validates :address, presence: true, length: {maximum: 250}
  validates :contact, presence: true, length: {maximum: 15},
    format: { with: /\A[0-9]+\Z/, message: "Contact should be numeric only and no more than 15 digits"}
  validates :email, uniqueness: true, presence: true, length: {maximum: 250},
    format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  
  validates :password_digest, presence: true, confirmation: true
  validates :description, length: {maximum: 250}
  validates :type, presence: true

  def to_s
    "#{firstname} #{lastname}"
  end
end
