require 'test_helper'

class UserprofileTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Userprofile.new.valid?
  end
end
