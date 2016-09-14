class Text < ApplicationRecord
  belongs_to :language
  has_many :words
  accepts_nested_attributes_for :words
end
