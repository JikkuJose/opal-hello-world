# use sprockets directive to include jquery
#= require 'jquery'

require 'opal'
require 'opal-jquery'

Document.ready? do
  puts "Message from opal"

  Element.find('#element').text = "Setting header with Opal"

  Element.find('#button').on :click do
    Element.find('#element').text = ["Hey!", "Hello World", "Yes, random text ;)"].sample
  end
end
