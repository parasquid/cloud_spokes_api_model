module CloudSpokes
  class Railtie < Rails::Railtie

    initializer "cloud_spokes.configure_rails_initialization" do
      CloudSpokes::APP_CONFIG = 
      begin
        YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
      rescue Errno::ENOENT => e
        gem_config = $LOAD_PATH.find {|dir| dir =~ /app\/config/}
        YAML.load_file("#{gem_config}/config.yml")[Rails.env]
      end
    end

  end
end