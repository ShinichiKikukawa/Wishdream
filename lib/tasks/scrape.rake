namespace :scrape do
  desc "Scrape hotel data"
  task hotels: :environment do
    url = 'https://www.ikyu.com/00001289/?lc=1&ppc=2&rc=1&st=1'
    scraper = Scraper.new(url)
    data = scraper.scrape
    puts "Hotel Data: #{data[:name]}"
    data[:prices].each do |price|
      puts "Price: #{price}"
    end
  end
end
