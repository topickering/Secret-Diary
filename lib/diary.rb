require_relative 'lock'

class SecretDiary

  def initialize
    @lock = Lock.new
    @entries = []
  end

attr_accessor :lock, :entries

  def add_entry
    fail 'Diary is locked' if @lock.locked
    @entries << gets.chomp
  end

  def get_entries
    fail 'Diary is locked' if @lock.locked
    @entries
  end

end
