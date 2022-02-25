require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "a project have required fields" do
    project = Project.new
    assert project.invalid?
    assert_equal ["can't be blank"], project.errors[:name]
    assert_equal ["can't be blank"], project.errors[:description]
    assert_equal ["can't be blank"], project.errors[:image]
    assert_equal ["can't be blank"], project.errors[:information]
    assert_equal ["can't be blank"], project.errors[:videofile]
    assert_equal ["can't be blank"], project.errors[:fieldOfEducation]
    assert_equal ["can't be blank"], project.errors[:fieldOfWelfare]
    assert_equal ["can't be blank"], project.errors[:fieldOfHealth]
  end

  test "a project must be created if it has valid attributes" do
    project = projects(:one)
    assert project.valid?
  end
end
