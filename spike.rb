require 'watir'
require 'byebug'

browser = Watir::Browser.new

browser.goto 'google.com'



browser.text_field(name: "q").set "ruby code"
# browser.button(name: "btnK").click

browser.text_field(name: "q").send_keys :enter

first_div = browser.divs(class: "g")[0]
first_link = first_div.links[1].href


puts "First result URL: #{first_link}"


# byebug

puts "end"
#end
