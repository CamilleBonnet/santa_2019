class Day1
  def self.simple_method(array)
    array.map(&:to_i).map{|i| (i / 3) - 2}.sum
  end

  def self.complex_method(array)
    total_mass = 0
    array.map do |mass|
      fuel_for_mass = (mass.to_i / 3) - 2

      while fuel_for_mass > 0
        total_mass += fuel_for_mass
        fuel_for_mass = fuel_for_mass / 3 - 2
      end
    end
    total_mass
  end
end