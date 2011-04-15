class Chapter < ActiveRecord::Base
  belongs_to :book
  has_many :comments, :as => :commendable
  
  acts_as_list :scope => :book
  
  def to_param
    "#{id}-#{name.downcase.gsub(' ', '_')}"
  end
end
