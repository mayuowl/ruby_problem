require 'date'

# 今日の日付を取得
today = Date.today
year = today.year
month = today.month

# 該当の月の月初と月末の情報を取得
first_day = Date.new(year, month, 1)
last_day = Date.new(year, month, -1)

# 月初の曜日から表示する位置（スペースをいくつ開けるか）を決定
space_count = first_day.wday

# 日付を2桁に修正・スペース付与
days = (1..last_day.day).map{ |i| i.to_s.rjust(2) }
space_days = Array.new(space_count, "  ").concat(days)

# 7つ区切りに成形
puts today.strftime("   %B %Y")
puts "Su Mo Tu We Th Fr Sa"
space_days.each_slice(7) { |i| puts i.join(" ")}
