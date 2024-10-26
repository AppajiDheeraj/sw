class Option < ApplicationRecord
  belongs_to :question

  # Allows the option to be marked as selected or not
  attribute :selected, :boolean, default: false
end
