class Plane
    
    attr_reader :plane_landed, :plane_instructed_to_land, :plane_instructed_to_takeoff, :plane_takeoff
    
    
    def initialize
        @plane_landed = false
        @plane_instructed_to_land = false
        @plane_instructed_to_takeoff = false
        @plane_takeoff = false
    end
    
    def instruct_to_land
       @plane_instructed_to_land = true 
    end
    
    def land
        if plane_instructed_to_land == true
            return @plane_landed = true
        end
        return "Warning: the plane has not been requested to land" if plane_instructed_to_land == false
    end
    
    def instruct_to_takeoff
        @plane_instructed_to_takeoff = true if plane_instructed_to_land == true && plane_landed == true
        return "Warning: The plane is not present in the airport" if plane_landed == false || plane_instructed_to_land == false
    end
    
    def takenoff
        @plane_takeoff == true if plane_landed == true && plane_instructed_to_takeoff == true
    end
    
    def reset
        @plane_landed = false
        @plane_instructed_to_land = false
        @plane_instructed_to_takeoff = false
        @plane_takeoff = false
    end

end



