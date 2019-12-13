class Day6
  def self.process(input)
    splitted_duos = input.dup.map{|v| v.split(")")}

    centers  = splitted_duos.map{|duo| duo[0]}
    in_orbit = splitted_duos.map{|duo| duo[1]}

    orbit_count = {}

    in_orbit.each_with_index do |planet, index|
      i = index
      orbit = planet
      center = centers[i]

      links = 1

      while center != "COM"
        links += 1
        i = in_orbit.index(center)
        center = centers[i]
      end
      orbit_count[planet] = links
    end
    orbit_count.values.sum
  end

  def self.compute_santa_path(input)
    splitted_duos = input.dup.map{|v| v.split(")")}

    centers  = splitted_duos.map{|duo| duo[0]}
    in_orbit = splitted_duos.map{|duo| duo[1]}

    orbit_path = {}

    in_orbit.each_with_index do |planet, index|
      i = index
      orbit = planet
      center = centers[i]
      orbit_path[planet] = []

      while center != "COM"
        orbit_path[planet] << center
        i = in_orbit.index(center)
        center = centers[i]
      end
    end
    meeting_point = (orbit_path["SAN"] & orbit_path["YOU"]).first
    min_path = orbit_path["SAN"].index(meeting_point) + orbit_path["YOU"].index(meeting_point)
  end
end