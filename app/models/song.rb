class Song < ActiveRecord::Base
  has_many :covers
  has_many :bands, :through => :covers
end
