require 'rails_helper'

RSpec.describe Book, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "has a price" do
    book = Book.new({title: "Sample book", price: 39.99})
    expect(book.price).to eq(39.99)
    expect(book.subject).to eq(nil)
  end
end
