class Note < ApplicationRecord
    belongs_to :prompt
    validates :desc, presence: true
end
