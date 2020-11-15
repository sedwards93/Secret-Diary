require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

RSpec.describe SecretDiary do
  let(:diary) {double :diary}
  let(:new_diary) {SecretDiary.new(diary)}
  let(:message) {"Hello"}

  context "when locked" do
    it "refuses to be read" do
      expect(new_diary.read).to eq("Go away!")
    end
    it "refuses to be written" do
      expect(new_diary.write(message)).to eq ("Go away!")
    end
  end

  context "when unlocked" do
    before do
      new_diary.unlock
      allow(diary).to receive(:read)
      allow(diary).to receive(:write).with(message)
    end
    it "gets read" do
      expect(diary).to receive(:read)
      new_diary.read
    end
    it "gets written" do
      expect(diary).to receive(:write).with(message)
      new_diary.write(message)
    end
end
end
