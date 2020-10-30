class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = []
        ProjectBacker.all.each do |backer|
            if backer.backer == self
                projects << backer.project
            end
        end
        projects
    end

end