require 'diary'

describe SecretDiary do

  describe '#add_entry' do
    it 'returns an error if the diary is locked' do
      expect { subject.add_entry }.to raise_error 'Diary is locked'
    end
    it 'allows users to make an entry if unlocked' do
      subject.lock.unlock
      expect(subject).to respond_to(:add_entry)
    end
  end

  describe '#get_entries' do
    it 'returns an error if the diary is locked' do
      expect { subject.get_entries }.to raise_error 'Diary is locked'
    end
    it 'allows users to retrieve entries if unlocked' do
      subject.lock.unlock
      expect(subject).to respond_to(:get_entries)
    end
  end

end
