require 'fizzbuzz'

describe FizzBuzz do

	let(:fizzbuzz) {FizzBuzz.new}

	context "knows a number is divisible by" do

		it "3" do
			expect(fizzbuzz.is_divisible_by_three?(3)).to be true
		end

		it "5" do
			expect(fizzbuzz.is_divisible_by_five?(5)).to be true
		end

		it "3 and 5" do
			expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be true
		end
	end

	context "knows a number is not divisible by" do

		it "3" do
			expect(fizzbuzz.is_divisible_by_three?(1)).to be false
		end

		it "5" do
			expect(fizzbuzz.is_divisible_by_five?(1)).to be false
		end

		it "3 and 5" do
			expect(fizzbuzz.is_divisible_by_fifteen?(9)).to be false
		end
	end

	context "playing fizzbuzz" do

		it "should return fizz if divisible by 3" do
			expect(fizzbuzz.fizzbuzz(3)).to eq "Fizz"
		end

		it "should return buzz if divisible by 5" do
			expect(fizzbuzz.fizzbuzz(5)).to eq "Buzz"
		end

		it "should return fizzbuzz if divisible by 3 and 5" do
			expect(fizzbuzz.fizzbuzz(15)).to eq "FizzBuzz"
		end
	end
end