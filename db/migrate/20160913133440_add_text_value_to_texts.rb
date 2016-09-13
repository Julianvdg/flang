class AddTextValueToTexts < ActiveRecord::Migration[5.0]
  def change
    add_column :texts, :text, :string
  end
end
