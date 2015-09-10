class Terrace
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
    @open = true
  end

  def size
    @length * @width
  end

  def status
    status = ""
    if @open
      status = "open"
    else
      status = "closed"
    end

    "The terrace is #{status}"
  end

  def close
    @open = false
  end

  def open
    @open = true
  end
end
