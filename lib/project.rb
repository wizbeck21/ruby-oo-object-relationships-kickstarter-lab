class Project
attr_accessor :title, :backer

@@all = []

def initialize(title)
    @title = title
    @@all << self
end

def self.all
    @@all
end

def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def backers
    @array = ProjectBacker.all.select {|proj| proj.project == self }
     @array.map do |back|
        back.backer
    end
end 
       

end