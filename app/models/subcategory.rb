class Subcategory < ApplicationRecord
    belongs_to :category
    has_many :video, dependent: :destroy
end