class Form < ApplicationRecord
  has_many :sections, dependent: :destroy

    # A scope to retrieve forms in descending order of creation date
    scope :recent, -> { order(created_at: :desc) }

    # A scope to preload sections when fetching forms (to avoid N+1 query issues)
    scope :with_sections, -> { includes(:sections) }

end
