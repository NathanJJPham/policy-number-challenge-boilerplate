module PolicyOcr

  def self.parse
    @file = File.open("spec/fixtures/sample.txt")
    @lines = @file.read.lines

    @lines.each_with_index do |x, i|
    # @a starts from the bottom of the number "|_|" @b is the middle "| |" @c is the top " _ ". ex: 0
      @a = @lines[i].chars.each_slice(3).reject { |a| a.include? "\n" }.to_a
      @b = @lines[i - 1].chars.each_slice(3).reject { |a| a.include? "\n" }.to_a
      @c = @lines[i - 2].chars.each_slice(3).reject { |a| a.include? "\n" }.to_a

      if @a[0].join == "|_|" && @b[0].join == "| |" && @c[0].join == " _ "
        print "0"
      elsif @a[0].join == "  |" && @b[0].join == "  |" && @c[0].join == "   " 
        print "1"
      elsif @a[0].join == "|_ " && @b[0].join == " _|" && @c[0].join == " _ "
        print "2"
      elsif @a[0].join == " _|" && @b[0].join == " _|" && @c[0].join == " _ "  
        print "3"
      elsif @a[0].join == "  |" && @b[0].join == "|_|" && @c[0].join == "   " 
        print "4"
      elsif @a[0].join == " _|" && @b[0].join == "|_ " && @c[0].join == " _ "
        print "5"
      elsif @a[0].join == "|_|" && @b[0].join == "|_ " && @c[0].join == " _ " 
        print "6"
      elsif @a[0].join == "  |" && @b[0].join == "  |" && @c[0].join == " _ " 
        print "7"
      elsif @a[0].join == "|_|" && @b[0].join == "|_|" && @c[0].join == " _ " 
        print "8"
      elsif @a[0].join == " _|" && @b[0].join == "|_|" && @c[0].join == " _ " 
        print "9"
      end

      if @a[1].join == "|_|" && @b[1].join == "| |" && @c[1].join == " _ "
        print "0"
      elsif @a[1].join == "  |" && @b[1].join == "  |" && @c[1].join == "   " 
        print "1"
      elsif @a[1].join == "|_ " && @b[1].join == " _|" && @c[1].join == " _ "
        print "2"
      elsif @a[1].join == " _|" && @b[1].join == " _|" && @c[1].join == " _ "  
        print "3"
      elsif @a[1].join == "  |" && @b[1].join == "|_|" && @c[1].join == "   " 
        print "4"
      elsif @a[1].join == " _|" && @b[1].join == "|_ " && @c[1].join == " _ "
        print "5"
      elsif @a[1].join == "|_|" && @b[1].join == "|_ " && @c[1].join == " _ " 
        print "6"
      elsif @a[1].join == "  |" && @b[1].join == "  |" && @c[1].join == " _ " 
        print "7"
      elsif @a[1].join == "|_|" && @b[1].join == "|_|" && @c[1].join == " _ " 
        print "8"
      elsif @a[1].join == " _|" && @b[1].join == "|_|" && @c[1].join == " _ " 
        print "9"
      end

      if @a[2].join == "|_|" && @b[2].join == "| |" && @c[2].join == " _ "
        print "0"
      elsif @a[2].join == "  |" && @b[2].join == "  |" && @c[2].join == "   " 
        print "1"
      elsif @a[2].join == "|_ " && @b[2].join == " _|" && @c[2].join == " _ "
        print "2"
      elsif @a[2].join == " _|" && @b[2].join == " _|" && @c[2].join == " _ "  
        print "3"
      elsif @a[2].join == "  |" && @b[2].join == "|_|" && @c[2].join == "   " 
        print "4"
      elsif @a[2].join == " _|" && @b[2].join == "|_ " && @c[2].join == " _ "
        print "5"
      elsif @a[2].join == "|_|" && @b[2].join == "|_ " && @c[2].join == " _ " 
        print "6"
      elsif @a[2].join == "  |" && @b[2].join == "  |" && @c[2].join == " _ " 
        print "7"
      elsif @a[2].join == "|_|" && @b[2].join == "|_|" && @c[2].join == " _ " 
        print "8"
      elsif @a[2].join == " _|" && @b[2].join == "|_|" && @c[2].join == " _ " 
        print "9"
      end

      if @a[3].join == "|_|" && @b[3].join == "| |" && @c[3].join == " _ "
        print "0"
      elsif @a[3].join == "  |" && @b[3].join == "  |" && @c[3].join == "   " 
        print "1"
      elsif @a[3].join == "|_ " && @b[3].join == " _|" && @c[3].join == " _ "
        print "2"
      elsif @a[3].join == " _|" && @b[3].join == " _|" && @c[3].join == " _ "  
        print "3"
      elsif @a[3].join == "  |" && @b[3].join == "|_|" && @c[3].join == "   " 
        print "4"
      elsif @a[3].join == " _|" && @b[3].join == "|_ " && @c[3].join == " _ "
        print "5"
      elsif @a[3].join == "|_|" && @b[3].join == "|_ " && @c[3].join == " _ " 
        print "6"
      elsif @a[3].join == "  |" && @b[3].join == "  |" && @c[3].join == " _ " 
        print "7"
      elsif @a[3].join == "|_|" && @b[3].join == "|_|" && @c[3].join == " _ " 
        print "8"
      elsif @a[3].join == " _|" && @b[3].join == "|_|" && @c[3].join == " _ " 
        print "9"
      end

      if @a[4].join == "|_|" && @b[4].join == "| |" && @c[4].join == " _ "
        print "0"
      elsif @a[4].join == "  |" && @b[4].join == "  |" && @c[4].join == "   " 
        print "4"
      elsif @a[4].join == "|_ " && @b[4].join == " _|" && @c[4].join == " _ "
        print "2"
      elsif @a[4].join == " _|" && @b[4].join == " _|" && @c[4].join == " _ "  
        print "3"
      elsif @a[4].join == "  |" && @b[4].join == "|_|" && @c[4].join == "   " 
        print "4"
      elsif @a[4].join == " _|" && @b[4].join == "|_ " && @c[4].join == " _ "
        print "5"
      elsif @a[4].join == "|_|" && @b[4].join == "|_ " && @c[4].join == " _ " 
        print "6"
      elsif @a[4].join == "  |" && @b[4].join == "  |" && @c[4].join == " _ " 
        print "7"
      elsif @a[4].join == "|_|" && @b[4].join == "|_|" && @c[4].join == " _ " 
        print "8"
      elsif @a[4].join == " _|" && @b[4].join == "|_|" && @c[4].join == " _ " 
        print "9"
      end

      if @a[5].join == "|_|" && @b[5].join == "| |" && @c[5].join == " _ "
        print "0"
      elsif @a[5].join == "  |" && @b[5].join == "  |" && @c[5].join == "   " 
        print "1"
      elsif @a[5].join == "|_ " && @b[5].join == " _|" && @c[5].join == " _ "
        print "2"
      elsif @a[5].join == " _|" && @b[5].join == " _|" && @c[5].join == " _ "  
        print "3"
      elsif @a[5].join == "  |" && @b[5].join == "|_|" && @c[5].join == "   " 
        print "4"
      elsif @a[5].join == " _|" && @b[5].join == "|_ " && @c[5].join == " _ "
        print "5"
      elsif @a[5].join == "|_|" && @b[5].join == "|_ " && @c[5].join == " _ " 
        print "6"
      elsif @a[5].join == "  |" && @b[5].join == "  |" && @c[5].join == " _ " 
        print "7"
      elsif @a[5].join == "|_|" && @b[5].join == "|_|" && @c[5].join == " _ " 
        print "8"
      elsif @a[5].join == " _|" && @b[5].join == "|_|" && @c[5].join == " _ " 
        print "9"
      end

      if @a[6].join == "|_|" && @b[6].join == "| |" && @c[6].join == " _ "
        print "0"
      elsif @a[6].join == "  |" && @b[6].join == "  |" && @c[6].join == "   " 
        print "1"
      elsif @a[6].join == "|_ " && @b[6].join == " _|" && @c[6].join == " _ "
        print "2"
      elsif @a[6].join == " _|" && @b[6].join == " _|" && @c[6].join == " _ "  
        print "3"
      elsif @a[6].join == "  |" && @b[6].join == "|_|" && @c[6].join == "   " 
        print "4"
      elsif @a[6].join == " _|" && @b[6].join == "|_ " && @c[6].join == " _ "
        print "5"
      elsif @a[6].join == "|_|" && @b[6].join == "|_ " && @c[6].join == " _ " 
        print "6"
      elsif @a[6].join == "  |" && @b[6].join == "  |" && @c[6].join == " _ " 
        print "7"
      elsif @a[6].join == "|_|" && @b[6].join == "|_|" && @c[6].join == " _ " 
        print "8"
      elsif @a[6].join == " _|" && @b[6].join == "|_|" && @c[6].join == " _ " 
        print "9"
      end

      if @a[7].join == "|_|" && @b[7].join == "| |" && @c[7].join == " _ "
        print "0"
      elsif @a[7].join == "  |" && @b[7].join == "  |" && @c[7].join == "   " 
        print "1"
      elsif @a[7].join == "|_ " && @b[7].join == " _|" && @c[7].join == " _ "
        print "2"
      elsif @a[7].join == " _|" && @b[7].join == " _|" && @c[7].join == " _ "  
        print "3"
      elsif @a[7].join == "  |" && @b[7].join == "|_|" && @c[7].join == "   " 
        print "4"
      elsif @a[7].join == " _|" && @b[7].join == "|_ " && @c[7].join == " _ "
        print "5"
      elsif @a[7].join == "|_|" && @b[7].join == "|_ " && @c[7].join == " _ " 
        print "6"
      elsif @a[7].join == "  |" && @b[7].join == "  |" && @c[7].join == " _ " 
        print "7"
      elsif @a[7].join == "|_|" && @b[7].join == "|_|" && @c[7].join == " _ " 
        print "8"
      elsif @a[7].join == " _|" && @b[7].join == "|_|" && @c[7].join == " _ " 
        print "9"
      end

      if @a[8].join == "|_|" && @b[8].join == "| |" && @c[8].join == " _ "
        print "0"
      elsif @a[8].join == "  |" && @b[8].join == "  |" && @c[8].join == "   " 
        print "1"
      elsif @a[8].join == "|_ " && @b[8].join == " _|" && @c[8].join == " _ "
        print "2"
      elsif @a[8].join == " _|" && @b[8].join == " _|" && @c[8].join == " _ "  
        print "3"
      elsif @a[8].join == "  |" && @b[8].join == "|_|" && @c[8].join == "   " 
        print "4"
      elsif @a[8].join == " _|" && @b[8].join == "|_ " && @c[8].join == " _ "
        print "5"
      elsif @a[8].join == "|_|" && @b[8].join == "|_ " && @c[8].join == " _ " 
        print "6"
      elsif @a[8].join == "  |" && @b[8].join == "  |" && @c[8].join == " _ " 
        print "7"
      elsif @a[8].join == "|_|" && @b[8].join == "|_|" && @c[8].join == " _ " 
        print "8"
      elsif @a[8].join == " _|" && @b[8].join == "|_|" && @c[8].join == " _ " 
        print "9"
      end
    end

  end

end
