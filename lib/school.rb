class School

def initialize(name)
  @name = name
  @roster = {}
end

attr_reader :name, :roster

def add_student(name, grade)

# @roster[grade] ||= (@roster[:grade] = [])
  if @roster.keys.include?(grade)
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
  end
end



def grade(grade)
  return @roster[grade]
end


def sort
  # @roster.each_key { |grade|
  #   @roster[grade].sort
  #
  # }
  @roster.sort_by(values)
  return @roster
end

end
