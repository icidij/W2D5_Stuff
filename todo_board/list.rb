require_relative "item"
class List
attr_accessor :label

    def initialize(label)

        @label = label
        @items = []
    end
    def add_item(title, deadline, description = "")

        if !Item.valid_date?(deadline)
            return false
        else
            @items << Item.new(title, deadline, description)
            return true


    
        end

    end

    def size

        @items.length
    end

    def valid_index?(index)

        return false if ((index < 0) || (index >= @items.size))

        true



    end


    def swap(index_1, index_2)
        if valid_index?(index_1) && valid_index?(index_2)

                @items.each_with_index do |item1, i|
                    if i == index_2
                       
                       original_deadline1 = item1.deadline
                       original_description1 = item1.description

                       original_title1 = item1.title


                        @items.each_with_index do |item2, j| 
                            if j == index_1
                                original_deadline2 = item2.deadline

                                original_title2 = item2.title
                                original_description2 = item2.description

                                item1.deadline = original_deadline2
                                
                                item1.description = original_description2

                                item1.title = original_title2
                               


                                item2.deadline = original_deadline1
                                item2.description = original_description1
                                item2.title = original_title1
                                return true

                                break




                            end



                        end
                    end


                end
        end

        false

    end





















    def [](index)
        return nil if !valid_index?(index)

        @items.each_with_index {|item, i| return item if (i == index)}
    end






    def priority
        @items.reverse.pop

    end
            
            
            
end
            










