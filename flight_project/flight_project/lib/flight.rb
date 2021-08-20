require_relative "passenger"
class Flight
attr_reader :passengers

def initialize(flight_num, capacity)

    @flight_number = flight_num
    @passengers = []

    @capacity = capacity
end

def full?
    @passengers.length == @capacity
    
end


def board_passenger(passenger)
    if !full?
        if passenger.has_flight?(@flight_number)
            @passengers.push(passenger)
        end

    end


end


def list_passengers

    output = []
    @passengers.each {|passenger| output.unshift(passenger.name)}
    output

end


def [](num)
    @passengers.each_with_index {|passenger, i| return passenger if i == num}



end



def <<(passenger)
board_passenger(passenger)



end
end