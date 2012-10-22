class FamilyPhoto < Photo
  def folder_name
    "families"
  end

  def self.all
    @families ||= YAML.load_file('data/families.yml').map do |attributes|
      FamilyPhoto.new(attributes)
    end
  end
end
