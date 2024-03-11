class Restaurant < ApplicationRecord
  belongs_to :user
  validates :address, presence: true
end
