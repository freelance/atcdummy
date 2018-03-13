class Search
 def initialize(page, page_size, keywords)
  @page = page
  @page_size = page_size
  @offset = page_size * page
  @keywords = keywords
 end


 def tickets_by_code
  if @keywords.present?
   tickets = Ticket.where(name_condition).order(:name).offset(@offset).limit(@page_size)
   @number_of_records = Brand.where(name_condition).count
  else
   brands = Brand.order(:name).offset(@offset).limit(@page_size)
   @number_of_records = Brand.count
  end

  return brands, number_of_pages
 end

 private

 def name_condition
  name_condition = "unaccent(lower(name)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
 end

 def number_of_pages
  number_of_pages = (@number_of_records % @page_size) == 0 ?
  @number_of_records / @page_size - 1 : @number_of_records / @page_size
 end
end
