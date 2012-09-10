# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "radiant-send_file-extension"

class SendFileExtension < Radiant::Extension
  version     RadiantSendFileExtension::VERSION
  description RadiantSendFileExtension::DESCRIPTION
  url         RadiantSendFileExtension::URL

  # See your config/routes.rb file in this extension to define custom routes

  extension_config do |config|
    # config is the Radiant.configuration object
  end

  def activate
    # tab 'Content' do
    #   add_item "Send File", "/admin/send_file", :after => "Pages"
    # end
  end
end
