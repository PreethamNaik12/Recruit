class Question < ApplicationRecord
    belongs_to :form, optional: true
end
