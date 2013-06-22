require 'spec_helper'

describe ApplicationHelper do
  describe 'full_title' do
    
    it 'should include the page title if passed' do
      full_title('foo').should =~ /foo/
    end
    
    it 'should include the base title' do
      full_title('foo').should =~ /^Ruby on Rails Tutorial Sample App/
    end
    
    it 'should include only the base title if no page title is passed' do
      full_title('').should == 'Ruby on Rails Tutorial Sample App'
    end
    
  end
end
