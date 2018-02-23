require 'paperclip/media_type_spoof_detector'

Paperclip::UriAdapter.register

module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end