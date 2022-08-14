class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through :freebies

    def received_one?(item_name)
    end

    def give_away(dev, freebie)
    end

end
