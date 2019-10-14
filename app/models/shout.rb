class Shout < ApplicationRecord
  belongs_to :user
  scope :recent, lambda{order(created_at: :desc)}

  validates :body, presence: true, length: {in: 1..144}
  validates :user, presence: true

  delegate :username, to: :user


end

