class Task < ApplicationRecord

  validates :title, :details, presence: true
  validates :title, uniqueness: true
end
