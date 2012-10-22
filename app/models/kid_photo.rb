class KidPhoto < Photo
  def folder_name
    "kids"
  end

  def self.all
    @kids ||= YAML.load_file('data/kids.yml').map do |attributes|
      KidPhoto.new(attributes)
    end
  end
end
