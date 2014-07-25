require("rspec")
require("prime_sifting")

describe("prime_sifting") do

  it("returns all of the prime numbers less than the input number") do
    prime_sifting(2).should(eq([]))
  end

  it("returns all of the prime numbers less than the input number") do
    prime_sifting(3).should(eq([2]))
  end

  it("returns all of the prime numbers less than the input number") do
    prime_sifting(5).should(eq([2,3]))
  end

  it("returns all of the prime numbers less than the input number") do
    prime_sifting(23).should(eq([2,3,5,7,11,13,17,19]))
  end

  it("returns all of the prime numbers less than the input number") do
    prime_sifting(350).should(eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,
                                  61,67,71,73,79,83,89,97,101,103,107,109,113,
                                  127,131,137,139,149,151,157,163,167,173,179,
                                  181,191,193,197,199,211,223,227,229,233,239,
                                  241,251,257,263,269,271,277,281,283,293,307,
                                  311,313,317,331,337,347,349]))
  end

end
