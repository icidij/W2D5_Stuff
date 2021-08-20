class Item
attr_accessor :title, :description
    def self.valid_date?(date_string)

        date = date_string.split("-")

        return false if date.length != 3
        return false if date[0].length != 4

        return false if date[1].to_i > 12

        return false if date[2].to_i > 31

        true

    end

    
    def initialize(title, deadline, description)
        @title = title
        if Item.valid_date?(deadline)
            @deadline = deadline
        else
            raise "Error, please give a valid date."
        end
        @description = description

    end
    def deadline=(new_deadline)

        return @deadline = new_deadline if Item.valid_date?(new_deadline)

        raise "Error, please give a valid date."



    end
    def deadline




        @deadline

    end









end














