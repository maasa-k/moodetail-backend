class Mood < ApplicationRecord
    has_many :prompts
    validates :state, presence: true
end
