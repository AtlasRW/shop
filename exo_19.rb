emails = []
i = 0

50.times do
  emails << "email#{i = i + 1}@email.com"
  if i.even?
    puts emails.last
  end
end