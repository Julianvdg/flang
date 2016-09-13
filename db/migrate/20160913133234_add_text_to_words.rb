class AddTextToWords < ActiveRecord::Migration[5.0]
  def change
    add_reference :words, :text, foreign_key: true
  end
end
