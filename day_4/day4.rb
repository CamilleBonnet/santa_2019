class Day4
  def self.nb_of_pwd(min, max)
    pwds = []
    (min..max).each do |pwd|
      pwd = pwd.to_s.split('').map(&:to_i)
      next unless pwd.uniq.size < 6
      next if pwd[0] > pwd[1] || pwd[0] > pwd[2] || pwd[0] > pwd[3] || pwd[0] > pwd[4] || pwd[0] > pwd[5]
      next if pwd[1] > pwd[2] || pwd[1] > pwd[3] || pwd[1] > pwd[4] || pwd[1] > pwd[5]
      next if pwd[2] > pwd[3] || pwd[2] > pwd[4] || pwd[2] > pwd[5]
      next if pwd[3] > pwd[4] || pwd[3] > pwd[5]
      next if pwd[4] > pwd[5]
      pwds << pwd.join('').to_i
    end
    pwds
  end

  def self.nb_of_pwd_with_more_criteria(pwds)
    strong_pwds = []
    pwds.each do |pwd|
      splitted_pwd = pwd.to_s.split('').map(&:to_i)
      uniq_figures = splitted_pwd.uniq
      next if uniq_figures.size == 1
      strong_pwds << pwd if only_two_digits(splitted_pwd, uniq_figures)
    end
    strong_pwds
  end

  def self.only_two_digits(pwd, figures)
    only_two = false
    pwd.each_with_index do |value, index|
      only_two = true if pwd.count(figures[index]) == 2
    end
    only_two
  end
end