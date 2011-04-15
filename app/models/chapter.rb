class Chapter < ActiveRecord::Base
  belongs_to :book
  
  acts_as_list :scope => :book
end
