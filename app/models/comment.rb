class Comment < ActiveRecord::Base
  belongs_to :commendable, :polymorphic => true
  
  scope :public, :conditions => {:public => true}
end
