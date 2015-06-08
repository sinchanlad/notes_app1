class Contact < ActiveRecord::Base
  has_many :tasks
  belongs_to :user
  validates :name, :presence => true
  validates :phone_number, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
end
