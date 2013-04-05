require 'bundler/setup'
require 'graphite_client'

module Notify; end

class Notify::Graphite < BasicObject
    VERSION = "0.0.1"
    
    def initialize(host, port=2003, basename=nil)
        @basename    = ["events", basename].compact.join('.')
        @client      = ::GraphiteClient.new(host+":"+port.to_s)
    end

    def send_event(event_name)
        @client.report(@basename+"."+event_name, 1)
        #TODO: we should also send a "normal" graphite event to the json api.
    end    
    
end
