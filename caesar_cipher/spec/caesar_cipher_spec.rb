require "caesar_cipher"

describe "cipher" do
	it "can deal with an empty string" do
		expect(cipher("",rand(0..26))).to eq("")		
	end

	it "shifts a one-word string by a given value" do
		expect(cipher("abc", 3)).to eq("def")
	end

	it "preserves capitalization" do
		expect(cipher("aBc", 3)).to eq("dEf")
	end

	it "can shift multiple words" do
		expect(cipher("Red Dog", 5)).to eq("Wji Itl")
	end

	it "does not shift non-letter" do
		expect(cipher("AtS3-@!", 1)).to eq("BuT3-@!")
	end

	it "wraps around" do
		expect(cipher("XYZ", 5)).to eq("CDE")
	end

	it "can deal with a negative shift" do
		expect(cipher("cde", -4)).to eq("yza")
	end

	it "works with number bigger than 26" do
		expect(cipher("abc",30)).to eq("efg")
	end

end
	