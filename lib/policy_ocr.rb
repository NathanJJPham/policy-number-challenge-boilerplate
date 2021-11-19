module PolicyOcr
  def self.parse
    blank_answer_array = []
    #opens file
    @file = File.open("spec/fixtures/sample.txt")
    #reads file lines
    @lines = @file.read.lines
    #iterates through lines in file
    @lines.each_with_index do |x, i|
    #turn each line into characters then divides them in groups of three ["   ", " _ ","   "]
    #each line has 9 numbers [[],[],[],[],[],[],[],[],[]] each array is the length of 3
    #@a starts from the bottom section of the number "|_|" @b is the middle section "| |" @c is the top section " _ ". ex: 0
      @a = @lines[i].chars.each_slice(3).reject { |a| a.include? "\n" }.to_a
      @b = @lines[i - 1].chars.each_slice(3).reject { |a| a.include? "\n" }.to_a
      @c = @lines[i - 2].chars.each_slice(3).reject { |a| a.include? "\n" }.to_a
    #joins together each group of three and checks corresponding sections for a number
      x = 0
      test = []
      while x < 9
        if @a[x].join == "|_|" && @b[x].join == "| |" && @c[x].join == " _ "
          test.push("0")
        elsif @a[x].join == "  |" && @b[x].join == "  |" && @c[x].join == "   " 
          test.push("1")
        elsif @a[x].join == "|_ " && @b[x].join == " _|" && @c[x].join == " _ "
          test.push("2")
        elsif @a[x].join == " _|" && @b[x].join == " _|" && @c[x].join == " _ "  
          test.push("3")
        elsif @a[x].join == "  |" && @b[x].join == "|_|" && @c[x].join == "   " 
          test.push("4")
        elsif @a[x].join == " _|" && @b[x].join == "|_ " && @c[x].join == " _ "
          test.push("5")
        elsif @a[x].join == "|_|" && @b[x].join == "|_ " && @c[x].join == " _ " 
          test.push("6")
        elsif @a[x].join == "  |" && @b[x].join == "  |" && @c[x].join == " _ " 
          test.push("7")
        elsif @a[x].join == "|_|" && @b[x].join == "|_|" && @c[x].join == " _ " 
          test.push("8")
        elsif @a[x].join == " _|" && @b[x].join == "|_|" && @c[x].join == " _ " 
          test.push("9")
        end
        x += 1
      end
      if test.length > 0
        blank_answer_array << test.join
      end
    end
    blank_answer_array
  end
end



