class Store < ApplicationRecord
    has_many :evals, dependent: :destroy
    has_many :users, through: :evals
end
