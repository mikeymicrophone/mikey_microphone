class Band < ActiveRecord::Base
  has_many :details, :as => :described
  has_many :comments, :as => :commendable
  has_many :covers
  has_many :songs, :through => :covers
end
