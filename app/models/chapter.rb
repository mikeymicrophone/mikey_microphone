class Chapter < ActiveRecord::Base
  belongs_to :book
  
  acts_as_list :scope => :book
  
  def to_param
    "#{id}-#{name.downcase.gsub(' ', '_')}"
  end
end
