class Item
  attr_accessor :name
  @@all_items = []
  @@items = {}
  def initialize(name, description)
    @name = name
    @description = description
    @@all_items << self
    @@items[@name] = self
  end

  def self.all
    return @@all_items
  end
end

class Cookie < Item
  attr_accessor :name, :description, :price
  @@all_cookies = []
  @@cookies = {}
  def initialize(name, description)
    super(name, description)
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

class Cake < Item
  attr_accessor :name, :description, :price
  @@all_cakes = []
  @@cakes = {}
  def initialize(name, description)
    super(name, description)
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

class Muffin < Item
  attr_accessor :name, :description, :price
  @@all_muffins = []
  @@muffins = {}
  def initialize(name, description)
    super(name, description)
    @description = description
    @price = '$1.95'
    @@all_muffins << self
    @@muffins[@name] = self
  end

  def self.all
    return @@all_muffins
  end

  def self.find(name)
    return @@muffins[name]
  end
end
