module BooksHelper
  def toggle_status_info(status = nil)
    case status
      when "None"
        "I don't have this"
      when "Not interested"
        "I'm not interested"
      when "Read"
        "I've read this"
      when "Wanna read"
        "I want to read this"
      when nil
        "Change book status"
    end
  end 
end
