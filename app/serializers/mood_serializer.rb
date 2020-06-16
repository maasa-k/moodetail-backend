class MoodSerializer < ActiveModel::Serializer
  attributes :id, :feeling
  has_many :prompts
end
