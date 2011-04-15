class Book < ActiveRecord::Base
  has_many :chapters
  
  def to_param
    "#{id}-#{name.downcase.gsub(' ', '_')}"
  end
end
