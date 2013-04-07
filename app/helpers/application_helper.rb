module ApplicationHelper
  def full_title(page_title)
    base_title = "Sample Timeliner"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def seconds_to_display(seconds)
    puts "CONVERTING #{seconds}"
    mins = seconds / 60
    if mins > 0
      secs = seconds % 60
    else
      secs = seconds
    end
    secs = "0#{secs}" if secs < 10
    "#{mins}:#{secs}"
  end
end
