require "radiant-enkoder_tags-extension"

class EnkoderTagsExtension < Radiant::Extension
  version     RadiantEnkoderTagsExtension::VERSION
  description RadiantEnkoderTagsExtension::DESCRIPTION
  url         RadiantEnkoderTagsExtension::URL

  def activate
    Page.send :include, EnkoderTags
  end
end
