class InstructionsController < ApplicationController

  def download_rakefile
    send_file "#{Rails.root}/public/Soapp.rake"
  end

  def show

  end

  def download_hook
    send_file "#{Rails.root}/public/post-commit"
  end

end