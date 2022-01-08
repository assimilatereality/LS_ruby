def print_in_box(text)
  box_length = text.length + 4
  puts "+#{"-"*box_length}+"
  puts "|#{' '*box_length}|"
  puts "|#{' '*2}#{text}#{' '*2}|"
  puts "|#{' '*box_length}|"
  puts "+#{"-"*box_length}+"
end

print_in_box('To boldly go where no one has gone before.')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+
print_in_box('')