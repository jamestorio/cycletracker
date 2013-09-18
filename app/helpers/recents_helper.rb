module RecentsHelper
  
  def total_distance 
    distances = @recents.map &:distance
    distances.inject :+
  end
  
end
