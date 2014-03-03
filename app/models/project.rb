class Project < ActiveRecord::Base
    def self.iron_find(id)
        self.find(id)
    end
end
