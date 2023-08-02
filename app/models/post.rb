class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :content, length: {maximum: 500}
  include ActiveModel::Validations
  validates_with EndAtValidator, unless: :date_is_nil?
  
  def date_is_nil?
    end_at == nil || start_at == nil
  end
end
