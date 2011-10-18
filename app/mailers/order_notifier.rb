class OrderNotifier < ActionMailer::Base
  default from: 'Maverick Saloon General Store <mavericksaloon@gmail.com>'
  default subject: 'Thank you for your order'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Maverick Saloon General Store order confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: 'Maverick Saloon General Store order shipped'
  end
end
