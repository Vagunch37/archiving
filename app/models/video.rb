class Video < ApplicationRecord
    belongs_to :category
    belongs_to :subcategory
    belongs_to :subject
    belongs_to :language
    belongs_to :user
    has_one_attached :file
end
