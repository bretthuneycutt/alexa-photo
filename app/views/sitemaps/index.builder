xml.instruct!
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9', 'xmlns:image' => "http://www.google.com/schemas/sitemap-image/1.1" do
  @urls_and_images.each do |url, images|
    xml.url do
      xml.loc url
      xml.changefreq "weekly"
      images.each do |image_url|
        xml.image :image do
          xml.image :loc, image_url
        end
      end
    end
  end
end
