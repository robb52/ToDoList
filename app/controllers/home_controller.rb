class HomeController < ApplicationController

  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to root_url, notice: 'All Marked Items Were Successfully Removed.'
  end

end