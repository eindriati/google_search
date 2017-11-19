require 'watir'
require 'byebug'

def search_for_term(browser, term)
  browser.goto 'google.com'
  browser.text_field(name: "q").set term
  browser.text_field(name: "q").send_keys :enter
  first_div = browser.divs(class: "g")[0]
  first_link = first_div.links[1].href
  puts "First result URL: #{first_link}"
end

browser = Watir::Browser.new

search_for_term(browser, "python language")

search_for_term(browser, "ruby language")






# byebug

puts "end"
#end
