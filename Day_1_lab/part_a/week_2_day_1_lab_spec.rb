require( "minitest/autorun")
require_relative( "week_2_day_1_work")

class TestStudent < MiniTest::Test

# Part A
# Test One: Create a Class called Student that takes
# in a name (String) and a cohort (integer) when
# a new instance is created.

  def test_student_name
    student = Student.new( "Andrew", 15 )
    assert_equal( "Andrew", student.student_name )
  end

  def test_cohort
    student = Student.new("Andrew", 15)
    assert_equal( 15, student.cohort )
  end

# Create a couple of Getter methods, one that
# returns the name property and one that returns
# the cohort property of the student.
# (Done in work doc)

# Add in Setter methods to update the students
# name and what cohort they are in.

  def test_setter_name
    student = Student.new( "Andrew", 15 )
    student.set_student_name( "George" )
    assert_equal( "George", student.student_name )
  end

  def test_setter_cohort
    student = Student.new( "Andrew", 15 )
    student.set_cohort( 1 )
    assert_equal( 1 , student.cohort )
  end

  def test_student_talks
    student = Student.new( "Andrew", 15 )
    assert_equal("Could you explain that?", student.student_talks )
  end

  def test_favorite_language
    student = Student.new( "Andrew", 15 )
    assert_equal( "I love Ruby!", student.favorite_language )
  end

end
