def leap_year? (year)
  year = year.to_i
  if year % 100 == 0
    year % 400 == 0
  else
    year % 4 == 0
  end
end

def test(expexted, actual)
  expexted == actual
end
