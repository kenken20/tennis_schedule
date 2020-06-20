class Group < ApplicationRecord
  has_many :groups_users
  has_many :users, through: :groups_users

  validates :name, :event_date, presence: true

  def self.search(search)
    if search
      Group.where('name LIKE(?)', "%#{search}%")
    else
      Group.all
    end
  end

end
