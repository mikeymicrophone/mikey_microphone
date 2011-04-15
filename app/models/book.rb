class Book < ActiveRecord::Base
  has_many :chapters
  has_many :comments, :as => :commendable
  
  def to_param
    "#{id}-#{name.downcase.gsub(' ', '_')}"
  end
end
