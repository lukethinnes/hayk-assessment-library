class Author 

    attr_reader :name
    @@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_book book
        BookAuthor.new(book, self)
    end

    def all_books
        authors = BookAuthor.all.select |pair|
            pair.author == self
    end
        authors.map {|author| author.book}
    end

end