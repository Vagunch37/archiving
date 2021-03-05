class Subject < ApplicationRecord
    has_many :video, dependent: :destroy
end
