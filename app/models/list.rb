class List < ActiveRecord::Base
  has_many :listings
  has_many :people, :through => :listings
  
  WEEK_E = 'one week prior email'
  DAYS_E = 'two days prior email'
  HOURS_E = 'three hours prior email'
  WEEK_S = 'one week prior sms'
  DAYS_S = 'two days prior sms'
  HOURS_S = 'three hours prior sms'
  
  def self.add person, lists
    if lists[:sms]
      Listing.create :person => person, :list => List.find_by_name(WEEK_S) if lists[:week]
      Listing.create :person => person, :list => List.find_by_name(DAYS_S) if lists[:days]
      Listing.create :person => person, :list => List.find_by_name(HOURS_S) if lists[:hours]
    end
    if lists[:email]
      Listing.create :person => person, :list => List.find_by_name(WEEK_E) if lists[:week]
      Listing.create :person => person, :list => List.find_by_name(DAYS_E) if lists[:days]
      Listing.create :person => person, :list => List.find_by_name(HOURS_E) if lists[:hours]      
    end
  end

end
