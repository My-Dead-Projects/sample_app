require 'spec_helper'

describe ApplicationHelper do
  describe 'full_title' {
    it 'should include the page title if passed' {
      full_title('foo').should =~ /foo/
    }
    it 'should include the base title' {
      full_title('foo').should =~ /^Ruby on Rails Tutorial Sample App/
    }
    it 'should include only the base title if no page title is passed' {
      full_title('').should == 'Ruby on Rails Tutorial Sample App'
    }
  }
end
