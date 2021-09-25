def is_isogram(string)
    #your code here
    string.downcase !~ /([a-z]).*\1/
  end