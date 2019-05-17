require 'pry'

class Backer
  attr_reader :name, :backed_projects

  @@total_backers = []

  def initialize(name)
    @name = name
    @backed_projects = []

    @@total_backers << self
    #binding.pry
  end

  def back_project(projectName)

    @backed_projects << projectName
    projectName.backers << self
    #binding.pry
  end

  def self.all
    @@total_backers
  end


end

#b1 = Backer.new("Bob")
  #binding.pry
