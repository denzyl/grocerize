class Item < ActiveRecord::Base
  has_many :categories
  belongs_to :purchase
end
