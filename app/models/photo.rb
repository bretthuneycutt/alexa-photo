class Photo
  attr_reader :filename, :width
  MARGIN = 3

  def initialize(attributes = {})
    @filename = attributes['filename']
    @width = attributes['width']
  end

  def url
    URL.assets("#{folder_name}/#{filename}.jpg")
  end

  def width_and_margin
    width + MARGIN
  end
end
