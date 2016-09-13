class Language < ApplicationRecord
  has_many :words
  has_many :translations
  has_many :texts
end
