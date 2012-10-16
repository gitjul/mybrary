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
      when nil
        "Change book status"
    end
  end 
end
