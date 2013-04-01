require 'spec_helper'

describe Project do

  it 'fires after commit method' do
    project = Project.new(name: 'Testing')
    project.should_receive(:fire_this_method).once
    project.save!
  end

end
