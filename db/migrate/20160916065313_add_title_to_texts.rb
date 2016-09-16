class AddTitleToTexts < ActiveRecord::Migration[5.0]
  def change
    add_column :texts, :title, :string
  end
end
