require 'watir'
require 'byebug'

search_term = "python language"

browser = Watir::Browser.new

browser.goto 'google.com'



browser.text_field(name: "q").set search_term
# browser.button(name: "btnK").click

browser.text_field(name: "q").send_keys :enter

first_div = browser.divs(class: "g")[0]
first_link = first_div.links[1].href


puts "First result URL: #{first_link}"


# byebug

puts "end"
#end
