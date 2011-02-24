class Listing < ActiveRecord::Base
  belongs_to :person
  belongs_to :list
end
