require 'open-uri'
require 'nokogiri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @articles = []
    @images = []
    @links = []

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
  end
end
