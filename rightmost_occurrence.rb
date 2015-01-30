def rightmost_occurrence(string, char)
  uniform_string = string.downcase.chomp
  rtmst_occ = nil

  uniform_string.each_char.with_index do |c, index|
    c == char ? rtmst_occ = index : nil
  end
  putst rtmst_occ
  return rtmst_occ
end
