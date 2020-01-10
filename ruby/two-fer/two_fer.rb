class TwoFer
  def self.two_fer(recipient='you') # Descriptive, unabbreviated argument name with default value
    "One for #{recipient}, one for me." # string interpolation: passed
  end
end

=begin

ALTERNATIVE SOLUTIONS

'One for ' + recipient + ', one for me.' # string concatenation: passed

sprintf("One for %{who}, one for me.", {:who => recipient}) # functional-style sprintf method: passed

"One for %s, one for me." % recipient # sprintf string template: passed

REFERENCES
https://ruby-doc.org/core-2.7.0/Kernel.html#method-i-sprintf
https://ruby-doc.org/core-2.4.0/String.html#method-i-25
More on format strings: https://idiosyncratic-ruby.com/49-what-the-format.html

MENTOR NOTES
The notes I made in addition are here:

In the "What the Format" article, the advantages of classical interpolation section lists these points:

1. Interpolation happens on syntax level, no method calling involved
2. Inline interpolation quicker to write/more convenient for simple interpolations
3. Not possible to mismatch values and format string references

Here are some clarifying points:

For point 1, there is an implicit to_s method call involved with interpolation.

For point 2, the syntax required for String#% is extremely small, like 3 characters required.

For point 3, while true, we can use named annotations for the format codes, and repeat them with only one reference when multiples are needed. See example below

'The name is %<name>s, James %<name>s.' % {name: 'Bond'}

=end
