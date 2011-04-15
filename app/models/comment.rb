class Comment < ActiveRecord::Base
  belongs_to :commendable, :polymorphic => true
  
  named_scope :public, :conditions => {:public => true}
end
