require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

# The opposite of ASSERT is REFUTE

# Can also do a negative assert, i.e.
# assert thing != other thing

  def test_that_foreign_robot_neeing_repairs_sent_to_station_1
    # arrange
    ig88 = Robot.new
    ig88.needs_repairs = true
    ig88.foreign_model = true
    # act
    send_to_station = ig88.station
    # assert
    assert_equal(send_to_station, 1)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    r2d2 = Robot.new
    r2d2.needs_repairs = true
    r2d2.vintage_model = true
    # act
    send_to_station = r2d2.station
    # assert
    assert_equal(send_to_station, 2)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    c3po = Robot.new
    c3po.needs_repairs = true
    # act
    send_to_station = c3po.station
    # assert
    assert_equal(send_to_station, 3)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # arrange
    ed209 = Robot.new
    ed209.needs_repairs = false
    # act
    send_to_station = ed209.station
    # assert
    assert_equal(send_to_station, 4)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    # arrange
    evil_robot_bill = Robot.new
    # act
    evil_robot_bill.todos = []
    # assert
    assert_equal -1, evil_robot_bill.prioritize_tasks
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    # arrange
    evil_robot_tedd = Robot.new
    # act
    evil_robot_tedd.todos = [2,3,1]
    # assert
    assert evil_robot_tedd.prioritize_tasks == 3
  end

  def test_workday_on_day_off_returns_true
    # arrange
    johnny5 = Robot.new
    # act
    johnny5.day_off == "Monday"
    # assert
    assert johnny5.workday?("Monday")
  end

  def test_workday_not_day_off_returns_false
    # arrange
    k2so = Robot.new
    # act
    k2so.day_off == 2 # indicating Monday (day 2/7)
    # assert
    assert k2so.workday?(2)
  end

end
