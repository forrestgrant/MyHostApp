class InterfaceController < WKInterfaceController

  extend IB

  outlet :request_button, WKInterfaceButton
  outlet :response_label, WKInterfaceLabel
  outlet :error_label, WKInterfaceLabel

  def pull_from_parent(selector)
    InterfaceController.openParentApplication(
      { 'request' => 'Hello' },
      reply: lambda do |reply_info, error|
        @response_label.text = "#{reply_info}"
        @error_label.text = "#{error.localizedDescription}"
        puts "INFO: #{reply_info}"
        puts "Error: #{error.localizedDescription}"
      end,
    )
  end

end
