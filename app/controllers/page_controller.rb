class PageController < ApplicationController

  def show
    @page = Page.find_by(:custom_domain => request.host) || Page.find_by(:local_url => params[local_url])
  end

end
