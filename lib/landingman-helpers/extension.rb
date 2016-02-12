# Require core library
require 'middleman-core'

module Landingman
  class HelpersExtension < ::Middleman::Extension
    expose_to_template :favicon_tags

    def initialize(app, options_hash={}, &block)
      super
    end

    # Helper to output Favicon tags
    def favicon_tags
      html = <<EOT
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="#{app.asset_path('png', '/apple-touch-icon-144x144-precomposed')}" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="#{app.asset_path('png', '/apple-touch-icon-114x114-precomposed')}" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="#{app.asset_path('png', '/apple-touch-icon-72x72-precomposed')}" />
<link rel="apple-touch-icon-precomposed" href="#{app.asset_path('png', '/apple-touch-icon-precomposed')}" />
<link rel="shortcut icon" href="#{app.asset_path('png', '/favicon')}" />
<link rel="icon" type="image/ico" href="#{app.asset_path('ico', '/favicon')}" />
EOT
      ::ActiveSupport::SafeBuffer.new.safe_concat(html)
    end
  end
end