class Detail < ActiveRecord::Base
  belongs_to :described, :polymorphic => true
end
