module TasteOfTheWorld
  class RecipeList

    attr_accessor :recipes, :recipes_url

    @@all = []

    def initialize(recipes, recipes_url)
      @recipes = recipes
      @recipes_url = recipes_url
      @@all << self
    end

    def self.all
      @@all
    end

    def self.print_recipes
      self.all.each.with_index(1) do |name, index|
        puts ""
        puts "#{index}. #{name.recipes}"
      end
    end

  end
end