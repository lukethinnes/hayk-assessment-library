class Book

    attr_reader :title
    @@all = []

    def initialize title
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_author author
        BookAuthor.new(self, author)
    end

    def all_authors
        books = BookAuthor.all.select |pair|
            pair.book == self
    end
        books.map {|book| book.author}
    end
end