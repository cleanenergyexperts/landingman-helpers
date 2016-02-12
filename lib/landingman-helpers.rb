require "middleman-core"

Middleman::Extensions.register :landingman_helpers do
  require "landingman-helpers/extension"
  ::Landingman::HelpersExtension
end
