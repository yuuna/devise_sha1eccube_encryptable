require 'digest/sha1'

module Devise
  module Encryptors
    # = AES
    # Uses the AES algorithm to encrypt passwords.
    class Sha1eccube < Base
      class << self
        # Returns a Base64 encrypted password where pepper is used for the key,
        # and the initialization_vector is randomly generated and prepended onto
        # encoded ciphertext
        def digest(password, stretches, salt, pepper)
          Digest::SHA1.hexdigest(password.":".pepper)
        end
        alias :encrypt :digest
      end
    end
  end
end
