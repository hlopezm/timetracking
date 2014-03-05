class Project < ActiveRecord::Base
    has_many :entries

    validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format: {with: /[0-9a-zA-Z]/ }

    #Project.iron_find(3)
    def self.iron_find(id)
        find(id)
    end

    #Project.last_created_projects(3)
    def self.last_created_projects(n)
        limit(n).order(created_at: :desc)
    end

    def hours_worked(month, year)
      from = Date.new(year, month, 1)
      to   = from.end_of_month
      total = 0
      entries.where(date: from..to).each do |entry|
        total += entry.hours * 60 + entry.minutes
      end
      (total.to_f/60).round(1)
    end

end
