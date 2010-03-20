require 'test_helper'

class AboutTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert About.new.valid?
  end
end
