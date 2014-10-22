module ApplicationHelper

  def find_collisions(repo)
    files = []
    repo.commits.each do |commit|
      files << commit.path_names
    end
    files.detect{ |change| files.count(change) > 1}
  end

  def form_time(time)
    time.strftime("%a %m/%d/%y %H:%M")
  end

  def mad(change)
    return "<p class='modified'>Modified ".html_safe if change == "M"
    return "<p class='added'> Added ".html_safe if change == "A"
    return "<p class='deleted'>Deleted ".html_safe if change == "D"
  end

end
