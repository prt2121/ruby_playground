class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new("isbn shouldn't be empty") if isbn.empty?
    raise ArgumentError.new("price should be more than 0.") if price < 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "#{format("$%.2f", @price)}"
  end
end

b = BookInStock.new("asdf", 122.5)
puts b.price_as_string