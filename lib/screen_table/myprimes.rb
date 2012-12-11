class MyPrimes

  def initialize
    @primes = []
    @primes_first = [2,3,5]
  end

  # iterator
  def each()
    loop do
      yield succ  # next prime number
    end
  end

  # returns the next prime
  def succ
    if @primes_first.size > 0
       @primes << @primes_first.shift
      return @primes.last
    end

    is_prime = false
    prime = @primes.last

    while not is_prime
      prime += 2
      i = 0
      while not is_prime and @primes[i]**2 <= @primes.last
        is_prime = ! @primes.any? {|x| prime % x == 0}
        i += 1
      end
    end

    @primes << prime
    prime

  end

  alias next succ

  include Enumerable
end
