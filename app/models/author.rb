class Author < ApplicationRecord
  has_many :books

  def self.sort_by_publications_since
    order(publications_since: :desc)
  end

  def self.sort_by_boolean
    order(currently_active: :desc, publications_since: :desc)
  end

  def self.sort_by_book_count
    all.sort do |author|
      author.books.count
    end.reverse!
  end
end