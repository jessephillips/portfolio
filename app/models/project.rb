class Project < ApplicationRecord
  validates :title,
            :image,
            :short_desc,
            :long_desc,
            :project_link, 
            presence: true
end
