class Word < ApplicationRecord
  belongs_to :language
  has_many :translations
end
