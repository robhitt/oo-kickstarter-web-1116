require 'pry'

class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_obj)
    @backers << backer_obj
    backer_obj.backed_projects << self
  end

end
