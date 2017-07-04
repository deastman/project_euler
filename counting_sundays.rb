require 'date'

MONTHS_WITH_30_DAYS = [4, 6, 9, 11]

def counting_sundays(start_string, end_string)
  start_date = Date.parse(start_string)
  end_date = Date.parse(end_string)
  year = start_date.year
  day_of_month_start = 2
  count = 0

  until (year == end_date.year + 1)
    month = 1

    until (month == end_date.month + 1)
      if day_of_month_start == 0
        count += 1
      end

      day_of_month_start = (day_of_month_start + days_in_month(month, year)) % 7
      month += 1
    end

    year += 1
  end

  count
end

def days_in_month(month_number, year)
  case
  when MONTHS_WITH_30_DAYS.include?(month_number)
    30
  when month_number == 2
    days_in_february(year)
  else
    31
  end
end

def days_in_february(year)
  if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    29
  else
    28
  end
end
