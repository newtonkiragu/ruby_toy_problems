require 'rspec'
require 'capybara'
require_relative './../lib/bob_test'

describe BobTest do
  describe('#assert_equal') do
    it 'returns Exclamation when told a command' do
      remark_test = BobTest.new("hello!")
      expect(remark_test.assert_equal).to(eq('Whoa chill out'))
    end
  end

  describe('#assert_equal') do
    it 'returns Statement when told a statement' do
      remark_test = BobTest.new("hello.")
      expect(remark_test.assert_equal).to(eq('Whatever'))
    end
  end

  describe('#assert_equal') do
    it 'returns Question when told a question' do
      remark_test = BobTest.new("hello?")
      expect(remark_test.assert_equal).to(eq('Sure'))
    end
  end

  describe('#assert_equal') do
    it 'returns Question when told a shouted gibberish' do
      remark_test = BobTest.new("HELLO")
      expect(remark_test.assert_equal).to(eq('Whoa chill out'))
    end
  end
end
