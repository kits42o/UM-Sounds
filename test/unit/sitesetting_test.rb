require 'test_helper'

class SitesettingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Sitesetting.new.valid?
  end
end
