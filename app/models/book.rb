class Book < ApplicationRecord
  belongs_to :author

  def self.sort_by_publication_date
    order(publication_date: :desc)
  end

  def self.sort_by_boolean
    order(currently_printed: :desc, publication_date: :desc)
  end
end