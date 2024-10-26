class Question < ApplicationRecord
  belongs_to :section
  has_many :options, dependent: :destroy
end
