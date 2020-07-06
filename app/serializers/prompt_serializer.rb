class PromptSerializer < ActiveModel::Serializer
  attributes :id, :desc, :mood_id, :controllable
end
