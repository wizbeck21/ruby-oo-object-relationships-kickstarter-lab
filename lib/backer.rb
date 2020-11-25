class Backer
attr_accessor :name, :project

@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def backed_projects
     @array = ProjectBacker.all.select {|proj| proj.backer == self }
     @array.map do |proj|
        proj.project
     end
end

def back_project(project)
    ProjectBacker.new(project, self)
end

end
