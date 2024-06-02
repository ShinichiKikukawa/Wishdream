require 'nokogiri'
require 'open-uri'
require 'mechanize'

class Scraper
  def initialize(url)
    @url = url
    @agent = Mechanize.new
  end

  def scrape
    page = @agent.get(@url)
    parse_page(page)
  end

  private

  def parse_page(page)
    doc = Nokogiri::HTML(page.body)

    # ホテル名を取得
    hotel_name = doc.css('h1').text.strip rescue 'Hotel name not found'

    # 価格情報を取得
    availability_info = doc.css('small.availability.price.text-sm.leading-5.text-blue-700.px-1')
    prices = availability_info.map(&:text).map(&:strip)

    { name: hotel_name, prices: prices }
  end
end
