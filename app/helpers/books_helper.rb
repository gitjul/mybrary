module BooksHelper
  def toggle_status_info(status = nil)
    case status
      when 0
        "I don't have this book"
      when 1
        "I want to read this book"
      when 2
        "I've read this book"
      when 3
        "I'm not interested"
    end
  end

  def make_links(book, status)
    html = ""
    for code in 0..3
      text = toggle_status_info(code)
      unless status == text
        html <<"<li>#{link_to text, change_status_book_path(book, :status => code),
          {:method => :post}}</li>"
      end
    end
    raw(html)
  end
end
