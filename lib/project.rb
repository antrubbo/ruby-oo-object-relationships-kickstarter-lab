class Project
    attr_reader :title

    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer_list = []
        ProjectBacker.all.each do |b|
            if b.project = self
                project_backer_list << b.backers
            end
        end
        project_backer_list
    end

    def backers
        backers = []
        ProjectBacker.all.each do |backer|
            if backer.project == self
                backers << backer.backer
            end
        end
        backers
    end

end
