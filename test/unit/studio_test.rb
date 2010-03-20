require 'test_helper'

class StudioTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Studio.new.valid?
  end
end
