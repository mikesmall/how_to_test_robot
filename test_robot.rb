require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

# The opposite of ASSERT is REFUTE

# Can also do a negative assert, i.e.
# assert thing != other thing

  def test_that_foreign_robot_neeing_repairs_sent_to_station_1
    # arrange
    @robot = Robot.new
    @robot.needs_repairs = true
    @robot.foreign_model = true
    # act
    send_to_station = @robot.station
    # assert
    assert_equal(send_to_station, 1)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    @robot = Robot.new
    @robot.needs_repairs = true
    @robot.vintage_model = true
    # act
    send_to_station = @robot.station
    # assert
    assert_equal(send_to_station, 2)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    skip
    # arrange

    # act

    # assert
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    # arrange

    # act

    # assert

    #   return todos.max
    # end
  end

  def test_workday_on_day_off_returns_true
    # arrange
    @robot = Robot.new
    # act
    @robot.day_off == "Monday"
    # assert
    assert @robot.workday?("Monday")
  end

  def test_workday_not_day_off_returns_false
    # arrange
    @robot = Robot.new
    # act
    @robot.day_off == 2 # indicating Monday (day 2/7)
    # assert
    assert @robot.workday?(2)
  end

end
