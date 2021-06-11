require 'open-uri'
require 'nokogiri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    session[:booking_type] = ""
    @articles = []
    @images = []
    @links = []
    @items = Item.where(status: "for sale")
    @artists = Artist.all

    url = 'https://www.livingetc.com/news'

    html_file = URI.parse(url).open.read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('.listing__title').each do |element|
      @articles << element.text.strip
    end

    html_doc.search('.lazy-image-van').each do |element|
      @images << element.attribute('data-original-mos').value
    end

    html_doc.search('.listing__link').each do |element|
      @links << element.attribute('href').value
    end
    @images.uniq!
    @links.reject! { |l| l == "" }

    # disables tabs bar on homepage
    @disable_tab = true
  end

  def index
  end
end
