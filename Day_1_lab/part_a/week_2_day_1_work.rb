class Student

  def initialize( student_name, cohort )
    @student_name = student_name
    @cohort = cohort
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name( new_name )
    @student_name = new_name
  end

  def set_cohort( new_cohort )
    @cohort = new_cohort
  end

# Create a method that gets the student to talk
# (eg. Returns "I can talk!).

  def student_talks
    return "Could you explain that?"
  end

# Create a method that takes in a students
# favourite programming language and returns it
# as part of a string
# (eg. student1.say_favourite_language("Ruby")
# -> "I love Ruby").

  def favorite_language
    return "I love Ruby!"
  end


end
