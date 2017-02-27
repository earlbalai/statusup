class PageController < ApplicationController

  before_filter :find_page, :only => :show

  private
  
  def find_page
    @page = Page.find_by(:custom_domain => request.host) || Page.find_by(:local_url => params[local_url])
  end

end
