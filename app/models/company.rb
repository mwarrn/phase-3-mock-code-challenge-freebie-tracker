class Company < ActiveRecord::Base
    # Creating a many to many relationship between the company and the devs.
    has_many :freebies
    has_many :devs, through :freebies

    # Create a new Freebie object, and set its item_name, value, dev, and company attributes to the
    # arguments passed in.
    # 
    # Args:
    #   dev: the developer who is receiving the freebie
    #   item_name: The name of the item you want to give away.
    #   value: the value of the freebie
    def give_freebie(dev, item_name, value)
        Freebie.new(item_name: item_name, value: value, dev: dev, company: self)
    end

    # Class method that returns the oldest company.
    def self.oldest_company
        Company.order(:founding_year).first
    end

end
