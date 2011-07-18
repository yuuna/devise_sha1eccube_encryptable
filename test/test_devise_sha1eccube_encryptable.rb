require 'helper'

class TestDeviseSha1eccubeEncryptable < Test::Unit::TestCase
  should "be accessible" do
    encryptor = :sha1eccube
    assert ::Devise::Encryptors.const_get(encryptor.to_s.classify)
  end

  should "encrypt a password" do
    plain_text  = "A super secret password"
    pepper      = "23a3901d1903aef12d214ab1f1299de91049951b"
    salt        = ""
    encrypt_text = "abdd44baa77c569204181277e1b09e5acf499765"
    cipher_text = Devise::Encryptors::Sha1eccube.digest(plain_text, 10, salt, pepper)
    assert_equal cipher_text,encrypt_text
  end
end
