class Contact 
  include ActiveAttr::Model

  attribute :name
  attribute :email
  attribute :subject
  attribute :message
  
  validates :name, 
            :presence => true

  validates :subject, 
            :presence => true

  validates :email, 
            :presence => true

  validates :message, 
            :presence => true
  
  validates :email,
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  
  validates :message,
            :length => { :minimum => 10, :maximum => 1000 }
  
end