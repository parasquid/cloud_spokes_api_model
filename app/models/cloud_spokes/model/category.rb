class CloudSpokes::Model::Category < CloudSpokes::Model::BaseApi
  attr_accessor :id, :attributes,
    :name, :color

  def self.api_endpoint
    CloudSpokes::APP_CONFIG[:cs_api][:categories]
  end

  def self.names
    all.map {|category| category.name}
  end
end