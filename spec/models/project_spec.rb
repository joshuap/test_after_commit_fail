require 'spec_helper'

describe Project do

  it 'fires after commit method' do
    project = Project.new(name: 'Testing')
    project.should_receive(:fire_this_method).once
    project.save!
  end

  it 'fails when expectation is not met' do
    project = Project.new(name: 'Testing')
    project.should_not_receive(:fire_this_method)
    project.save!
    # This spec should not pass!
  end

end
