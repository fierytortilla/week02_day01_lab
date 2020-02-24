

class Student

  def initialize(name, cohort)
    @name= name
    @cohort= cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    @name= new_name
  end

  def set_cohort(new_cohort)
    @cohort= new_cohort
  end

  def can_talk(speech)
    return speech
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end


end
