class Attendee
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    "This attendee is called #{name}"
  end
end
