require 'digest/sha1'

module Devise
  module Encryptable
    module Encryptors
      # = Sha1eccube
      # Sha1 with eccube format encrypter
      class Sha1eccube < Base
        class << self
          #returns eccube encrypt with pepper
          def digest(password, stretches, salt, pepper)
            Digest::SHA1.hexdigest(password+":"+pepper)
          end
        alias :encrypt :digest
        end
      end
    end
  end
end
