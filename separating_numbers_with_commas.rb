# Separate numbers with a comma each three digits. 

def separate_with_comma(n)
  if n.to_s.length <= 3
    n.to_s
  else
    separate_with_comma(n.to_s[0...-3]) + "," + n.to_s[-3..-1]
  end
end

# tests
assert_equal         "1", separate_with_comma(1)
assert_equal        "10", separate_with_comma(10)
assert_equal       "100", separate_with_comma(100)
assert_equal     "1,000", separate_with_comma(1000)
assert_equal    "10,000", separate_with_comma(10000)
assert_equal   "100,000", separate_with_comma(100000)
assert_equal "1,000,000", separate_with_comma(1000000)
