class LineItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :name,
  presence: true
  

  validates :amount, 
  presence: true

  validates :description,
  presence: true

  validates :date,
  presence: true

  validates :category,
  presence: true
end
