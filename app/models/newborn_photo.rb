class NewbornPhoto < Photo
  def folder_name
    "newborns"
  end

  def self.all
    @kids ||= YAML.load_file('data/newborns.yml').map do |attributes|
      NewbornPhoto.new(attributes)
    end
  end
end