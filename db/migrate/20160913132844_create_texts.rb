class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
