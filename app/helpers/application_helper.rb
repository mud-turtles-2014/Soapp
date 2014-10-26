module ApplicationHelper

  # def find_collisions(repo)
  #   files = []
  #   repo.commits.each do |commit|
  #     files << commit.path_names
  #   end
  #   files.detect{ |change| files.count(change) > 1}
  # end

  def form_time(time)
    time.strftime("%a %m/%d/%y %H:%M")
  end

  def mad(change)
    return "<span class='modified'>Modified </span>".html_safe if change == "M"
    return "<span class='added'> Added </span>".html_safe if change == "A"
    return "<span class='deleted'>Deleted </span>".html_safe if change == "D"
  end

end
