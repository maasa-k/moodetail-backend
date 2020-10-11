class NoteSerializer < ActiveModel::Serializer
    attributes :id, :desc, :prompt_id
  end
  