require "./motions/*"
require "./html_transformer"
require "./serializer"
require "./component_connection"

# TODO: Can't build when required. Maybe in the initializer users will have to explicitly require this
# require "./motion_channel"

module Motion
  module Motions
    # include Broadcasts
    # include Lifecycle
    # include Motions
    # include PeriodicTimers
    include Rendering
  end
end