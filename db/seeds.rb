class String
    def self.foo
    'a'*10
    end
end

10.times do |i|
    project = Project.create name: "Iron Hack project #{i} ", 
    			description: String.foo
    	
    	3.times do |j|
	project.entries.create hours: 0, minutes: j*5,
				date: Date.new(2014, 3, j+1)
	end	
end

