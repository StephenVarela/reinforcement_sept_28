
seats = [
          [nil, "Pumpkin", nil, nil],
          ["Socks", nil, "Mimi", nil],
          ["Gismo", "Shadow", nil, nil],
          ["Smokey","Toast","Pacha","Mau"]
        ]
seats.each.with_index do |row_array, row_index|
  row_array.each.with_index do |seat, seat_index|
    if seat
      #seat is occupide
    else
      puts "row #{row_index+1} seat #{seat_index+1} is free. Do you want to sit here (y/n)"
      user_input = gets.chomp
      if(user_input == 'y')
        puts "What is your name"
        user_name = gets.chomp
        seats[row_index][seat_index] = user_name
      end
    end
  end
end

p seats
