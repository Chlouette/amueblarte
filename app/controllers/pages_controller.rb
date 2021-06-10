class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # disables tabs bar on homepage
    @disable_tab = true
  end
end
