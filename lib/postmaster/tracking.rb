module Postmaster

  class Tracking < APIResource
  
    def self.track(tracking_id)
      response = Postmaster.request(:get, '/v1/track', {:tracking => tracking_id})
      self.construct_from(response)
    end
  end

  class TrackingHistory < APIResource
  end
  
end
