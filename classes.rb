class Item
  attr_accessor :name, :description, :price, :photo
  @@all_items = []
  @@items = {}
  def initialize(name, description, photo)
    @name = name
    @description = description
    @price = ''
    @photo = photo
    @@all_items << self
    @@items[@name] = self
  end

  def self.all
    return @@all_items
  end
end

class Cookie < Item
  attr_accessor :name, :description, :price, :photo
  @@all_cookies = []
  @@cookies = {}
  def initialize(name, description, photo)
    super(name, description, photo)
    @price = '$2.95'
    @photo = photo
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

class Cake < Item
  attr_accessor :name, :description, :price, :photo
  @@all_cakes = []
  @@cakes = {}
  def initialize(name, description, photo)
    super(name, description, photo)
    @photo = photo
    @price = '$2.95 per slice/$30 whole'
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

class Pastry < Item
  attr_accessor :name, :description, :price, :photo
  @@all_pastries = []
  @@pastries = {}
  def initialize(name, description, photo)
    super(name, description, photo)
    @photo = photo
    @price = '$2.35'
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
