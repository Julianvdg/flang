class Language < ApplicationRecord
  has_many :words, :translations
end
