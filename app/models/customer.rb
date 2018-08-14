class Customer < ApplicationRecord
    has_many :visits
    validates :customernumber, :numericality => {:only_integer => true}
    validates :customeremail, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
