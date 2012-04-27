class Article < ActiveRecord::Base
  belongs_to :categories
  validates_presence_of :title, :content
  
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
end
