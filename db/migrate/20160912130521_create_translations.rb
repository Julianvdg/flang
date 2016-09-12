class CreateTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :translations do |t|
      t.string :value
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
