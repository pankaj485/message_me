class Message < ApplicationRecord
  validates :body, presence: true
  belongs_to :user
  # show last 20 messages only
  scope :custom_dispaly, -> { order(:created_at).last(20) }
end
