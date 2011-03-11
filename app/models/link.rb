class Link < ActiveRecord::Base
  belongs_to :linked, :polymorphic => true
end
