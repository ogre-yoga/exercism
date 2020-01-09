class TwoFer
  def self.two_fer(recipient='you') # Descriptive, unabbreviated argument name with default value
    "One for #{recipient}, one for me." # string interpolation: passed
    # 'One for ' + recipient + ', one for me.' # string concatenation: passed
    # sprintf("One for %{who}, one for me.", {:who => recipient}) # functional-style sprintf method: passed
    # "One for %s, one for me." % recipient # sprintf string template: passed
  end
end

# REFERENCES
# https://ruby-doc.org/core-2.7.0/Kernel.html#method-i-sprintf
# https://ruby-doc.org/core-2.4.0/String.html#method-i-25
# More on format strings: https://idiosyncratic-ruby.com/49-what-the-format.html
