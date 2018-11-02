class Lock

attr_accessor :locked

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end

end
