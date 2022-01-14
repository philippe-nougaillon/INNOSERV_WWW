require "test_helper"

class ContactMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = ContactMailer.submitted("test@gmail.com","MySubject","MyContent")
    assert_equal "INNOSERV New Contact", mail.subject
    assert_equal ["philippe.nougaillon@gmail.com"], mail.to
    assert_equal ["contact@innoserv-project.eu"], mail.from
  end
end
