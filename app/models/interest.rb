class Interest < ActiveRecord::Base
  has_many :links, :as => :linked
  has_many :details, :as => :described
end
