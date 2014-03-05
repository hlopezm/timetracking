class Entry < ActiveRecord::Base
	belongs_to :project

  validates :hours, :minutes, format: {with: /[0-9]/}, presence: true
  validates :date, presence: true
  validates :project, presence: true


end


