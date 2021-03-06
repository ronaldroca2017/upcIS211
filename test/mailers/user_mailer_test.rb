require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "lost_password" do
    mail = UserMailer.lost_password
    assert_equal "Lost password", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
