class Word < ApplicationRecord
  belongs_to :language
  belongs_to :text
  has_many :translations
end
