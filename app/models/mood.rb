class Mood < ApplicationRecord
    has_many :prompts
    validates :feeling, presence: true
end
