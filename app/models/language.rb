class Language < ApplicationRecord
    has_many :video, dependent: :destroy
end
