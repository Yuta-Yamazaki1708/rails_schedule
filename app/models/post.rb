class Post < ApplicationRecord
  validates :title, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :is_all_day, presence: true
end
