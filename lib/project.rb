class Project
  attr_reader :title, :backers

  @@total_projects = []

  def initialize(title)
    @title = title
    @backers = []

    @@total_projects << self
  end

  def add_backer(backerName)
    #binding.pry
    @backers << backerName
    backerName.backed_projects << self
  end

  def self.all
    @@total_projects
  end

end
