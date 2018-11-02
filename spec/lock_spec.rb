require 'lock'

describe Lock do

  describe '#unlock' do
    it 'unlocks the diary' do
      expect(subject.unlock).to eq false
    end
  end

  describe '#lock' do
    it 'locks an unlocked diary' do
      subject.unlock
      expect(subject.lock).to eq true
    end
  end

end
