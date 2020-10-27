# Write your code here.
#line shows everyone their current place in line and says "The line is currently empty." if zero
def line(katz_deli)
    if katz_deli.length == 0
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        katz_deli.each.with_index(1) do |person, index| #.each.with_index(index_to_start_with) lets you count index with element
            current_line << " #{index}. #{person}" #shovel in the index and person name into current line string
        end
        puts current_line #placed here to also capture empty line
    end
end

#The take_a_number method should accept two arguments, the array for the current line of people (katz_deli), 
#and a string containing the name of the person joining the end of the line. The method should call out 
#(puts) the person's name along with their position in line. 
def take_a_number(katz_deli, person)
    katz_deli.push(person) #push person's name to end of line.
    puts "Welcome, #{person}. You are number #{katz_deli.length} in line." #use .length to get length of line (not -1 because you start at 1)
end

#now_serving puts the next person in line and then removes them from the front. If no one else in line, "There is nobody waiting to be served!".
def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else
        serving = katz_deli.shift #remove first person using shift by setting = to new variable
        puts "Currently serving #{serving}." 
    end
end
        