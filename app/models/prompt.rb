class Prompt < ApplicationRecord
  belongs_to :mood
  validates :desc, presence: true
  validates :controllable, inclusion: { in: [ true, false ] }
end
