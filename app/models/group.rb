class Group < ApplicationRecord
  has_many :groups_users
  has_many :users, through: :groups_users

  validates :name, :event_date, presence: true
end
