class AddNotesToPrompts < ActiveRecord::Migration[6.0]
  def change
    add_column :prompts, :notes, :string
  end
end
