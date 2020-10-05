class Prompt < ApplicationRecord
  belongs_to :mood
  has_many :notes
  validates :desc, presence: true
  validates :controllable, inclusion: { in: [ true, false ] }
end
