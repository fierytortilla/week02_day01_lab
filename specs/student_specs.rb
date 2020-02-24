require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)


class TestStudent < MiniTest::Test

  def test_name_getter
    student1= Student.new("Ratthew", "E38")
    assert_equal("Ratthew", student1.get_name())
  end

  def test_cohort_getter
    student1= Student.new("Ratthew", "E38")
    assert_equal("E38", student1.get_cohort())
  end

  def test_name_setter
    student1= Student.new("Ratthew", "E38")
    assert_equal("Ratman", student1.set_name("Ratman"))
  end

  def test_cohort_setter
    student1= Student.new("Ratthew", "E38")
    assert_equal("E40", student1.set_cohort("E40"))
  end

  def test_speech
    student1= Student.new("Ratthew", "E38")
    assert_equal("AAAAAAAAAAAAA", student1.can_talk("AAAAAAAAAAAAA"))
  end

  def test_say_favourite_language()
    student1= Student.new("Ratthew", "E38")
    assert_equal("I love Ruby!", student1.say_favourite_language("Ruby"))
  end

end
