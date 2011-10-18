require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Maverick Saloon General Store order confirmation", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["mavericksaloon@gmail.com"], mail.from
    assert_match "shirt", mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped
    assert_equal "Maverick Saloon General Store order shipped", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["mavericksaloon@gmail.com"], mail.from
    assert_match "shirt", mail.body.encoded
  end

end
