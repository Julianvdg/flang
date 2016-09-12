class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :value
      t.boolean :known
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
