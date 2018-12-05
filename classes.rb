class Cookie
  attr_accessor :name, :description, :price
  @@all_cookies = []
  @@cookies = {}
  def initialize(name, description)
    @name = name
    @description = description
    @price = '$1.95'
    @@all_cookies << self
    @@cookies[@name] = self
  end

  def self.all
    return @@all_cookies
  end

  def self.find(name)
    return @@cookies[name]
  end
end

class Cake
  attr_accessor :name, :description, :price
  @@all_cakes = []
  @@cakes = {}
  def initialize(name, description)
    @name = name
    @description = description
    @price = '$1.95'
    @@all_cakes << self
    @@cakes[@name] = self
  end

  def self.all
    return @@all_cakes
  end

  def self.find(name)
    return @@cake[name]
  end
end

class Pastry
  attr_accessor :name, :description, :price
  @@all_pastries = []
  @@pastries = {}
  def initialize(name, description)
    @name = name
    @description = description
    @price = '$1.95'
    @@all_pastries << self
    @@pastries[@name] = self
  end

  def self.all
    return @@all_pastries
  end

  def self.find(name)
    return @@pastries[name]
  end
end
