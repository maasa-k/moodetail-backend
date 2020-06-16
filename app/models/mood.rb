class Mood < ApplicationRecord
    has_many :prompts
    validates :feeling, presence: true

    # def add_prompt

    # end
end
