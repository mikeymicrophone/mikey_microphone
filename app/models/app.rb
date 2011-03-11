class App < ActiveRecord::Base
  has_many :details, :as => :described
  has_many :links, :as => :linked
end
