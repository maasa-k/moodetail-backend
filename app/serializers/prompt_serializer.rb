class PromptSerializer < ActiveModel::Serializer
  attributes :id, :desc, :mood_id, :controllable
  has_many :actions
end
