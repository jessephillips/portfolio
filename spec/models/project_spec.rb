require 'rails_helper'

RSpec.describe Project, type: :model do
  describe '#validations' do
    it 'is valid if required fields are present' do
      project = build(:project)
      expect(project).to be_valid
      expect(project.errors).to be_empty
    end
    
    [ :title,
      :image,
      :short_desc,
      :long_desc,
      :project_link 
    ].each do |required_attribute|
      it "is not valid without a #{required_attribute}" do
        project = build(:project)
        project.send("#{required_attribute}=", nil)
        expect(project).to_not be_valid
        expect(project.errors).to_not be_empty
      end
    end
  end
end
