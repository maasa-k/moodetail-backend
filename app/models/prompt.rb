class Prompt < ApplicationRecord
  belongs_to :mood
  has_many :actions
  validates :desc, presence: true
end
