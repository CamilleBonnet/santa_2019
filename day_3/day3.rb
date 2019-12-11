class Day3
  def self.compute_distance(path)
    path_1 = path[0]
    path_2 = path[1]
    coordinates_path_1 = store_all_coordinates(path_1)
    coordinates_path_2 = store_all_coordinates(path_2)
    intersections = define_intersections(coordinates_path_1, coordinates_path_2)
    compute_minimal(intersections)
  end

  def self.store_all_coordinates(path)
    coordinates = []
    x_coor = 0
    y_coor = 0
    path.each do |mouv|
      way = mouv[0]
      mouv[1..-1].to_i.times do
        case mouv[0]
        when 'R'
          y_coor += 1
        when 'L'
          y_coor -= 1
        when 'U'
          x_coor += 1
        when 'D'
          x_coor -= 1
        end
        coordinates << [x_coor, y_coor]
      end
    end
    coordinates
  end

  def self.define_intersections(coordinates_path_1, coordinates_path_2)
    coordinates_path_1 & coordinates_path_2
  end

  def self.compute_minimal(intersections)
    intersections.map do |coordinates|
      coordinates[0].abs() + coordinates[1].abs()
    end.min
  end

  def self.compute_minimal_delay(coordinates_path_1, coordinates_path_2, intersections)
    min_delay = []
    intersections.each do |i|
      index_path_1 = coordinates_path_1.index(i)
      index_path_2 = coordinates_path_2.index(i)
      min_delay << [index_path_1, index_path_2]
    end
    # adding 2 for [0, 0] point
    compute_minimal(min_delay) + 2
  end

  def self.minimize_delay(path)
    path_1 = path[0]
    path_2 = path[1]
    coordinates_path_1 = store_all_coordinates(path_1)
    coordinates_path_2 = store_all_coordinates(path_2)
    intersections = define_intersections(coordinates_path_1, coordinates_path_2)
    compute_minimal_delay(coordinates_path_1, coordinates_path_2, intersections)
  end
end