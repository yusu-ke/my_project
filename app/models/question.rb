class Question < ApplicationRecord
  has_many :score_mappings, dependent: :destroy
end
