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

end
