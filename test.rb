require './test_setup'
require './methods'

describe 'Methods' do

  describe 'sleep_in' do

    it 'should sleep in on the weekend at home' do
      sleep_in?(false, false).must_equal(true)
    end

    it 'should not sleep in during the week at home' do
      sleep_in?(true, false).must_equal(false)
    end

    it 'should sleep in on vacation on the weekend' do
      sleep_in?(false, true).must_equal(true)
    end

    it 'should sleep on vacation during the week' do
      sleep_in?(true, true).must_equal(true)
    end

  end
  
  describe 'monkey_trouble' do

    it 'is trouble when both monkeys are smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

    it 'is not trouble when only A is smiling' do
      monkey_trouble?(true, false).must_equal(false)
    end

    it 'is not trouble when only B is smiling' do
      monkey_trouble?(false, true).must_equal(false)
    end

    it 'is trouble when neither monkey is smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

  end

  describe 'sum_double' do
    
    it 'finds the sum' do
      sum_double(1, 2).must_equal(3)
    end

    it 'doubles the sum when the numbers are the same' do
      sum_double(3, 3).must_equal(12)
    end

  end

  describe 'blackjack' do

    it 'returns whichever value is closest to 21 without going over' do
      blackjack(21,20).must_equal(21)
    end

    it 'returns 0 if they both go over' do
      blackjack(22,5678).must_equal(0)
    end

    it 'returns the one closest to 21 but not over it' do
      blackjack(1,22).must_equal(1)
    end

  end

  describe 'n_twice' do
    it 'returns the first n chars and the last n chars of the string' do
      n_twice("procrastination", 3).must_equal("proion")
    end 
    it 'returns the string doubled if n is bigger than or equal to the number of characters in the string' do
      n_twice("cat", 4).must_equal("catcat")
    end
    it 'returns a blank string if the string is blank' do
      n_twice("", 57).must_equal("")
    end

  end

  describe 'close_far' do
    it 'returns true if a and b are close but c is atleast 2 away from the two values' do
      close_far(1, 2, 5).must_equal(true)
    end
    it 'returns true if b and c are close and a is atleast 2 away from b and c' do
      close_far(7, 43, 44).must_equal(true)
    end
    it 'returns false if only two numbers are far from each other' do 
      close_far(1,2,3).must_equal(false)
    end
    it 'returns false if all numbers are close to each other' do
      close_far(57,57,56).must_equal(false)



 end
