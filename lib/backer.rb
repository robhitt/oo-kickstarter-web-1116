class Backer
  # When a backer has added a project to its list of backed
  # projects, that project should also add the backer to its list
  # of backers. Refer back to the Code Along about Collaborating
  # Objects.

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_obj)
    @backed_projects << project_obj
    project_obj.add_backer(self)
  end
end
