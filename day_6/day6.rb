class Day6
  def self.process(input)
    compute_path_to_COM(input)
    @orbit_path.values.flatten.size
  end

  def self.compute_santa_path(input)
    compute_path_to_COM(input)
    meeting_point = (@orbit_path["SAN"] & @orbit_path["YOU"]).first
    min_path = @orbit_path["SAN"].index(meeting_point) + @orbit_path["YOU"].index(meeting_point)
  end

  def self.compute_path_to_COM(input)
    splitted_duos = input.dup.map{|v| v.split(")")}

    centers  = splitted_duos.map{|duo| duo[0]}
    in_orbit = splitted_duos.map{|duo| duo[1]}

    @orbit_path = {}

    in_orbit.each_with_index do |planet, index|
      i = index
      center = centers[i]
      @orbit_path[planet] = [center]

      while center != "COM"
        i = in_orbit.index(center)
        center = centers[i]
        @orbit_path[planet] << center
      end
    end
  end
end