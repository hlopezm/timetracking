class Project < ActiveRecord::Base
    has_many :entries

    #Project.iron_find(3)
    def self.iron_find(id)
        find(id)
    end

    #Project.last_created_projects(3)
    def self.last_created_projects(n)
        limit(n).order(created_at: :desc)
    end

end
