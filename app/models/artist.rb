class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self}
  end

  def galleries
    paintings.map { |painting| painting.gallery}
  end

  def cities
    galleries.map { |gallery| gallery.city}
  end

  def self.total_experience
    @all_total_experience = []
    @all_total_experience << artist.years_experience.sum
    @all_total_experience.sum
  end

  def self.most_prolific
    self.max_by { |artist| self.total_experience}
  end

  def create_painting(title, price, gallery)
      Painting.new(title, price, self, gallery)
  end

end
