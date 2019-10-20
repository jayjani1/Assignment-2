
  load 'ruby_intro_Team_425_rspillai_rrastog3.rb'

  def scores
    correct = 0
    wrong = 0
    full = 100

    # Q1
    begin
      two_sum([34,23,1,24,75,33,54,8], 60) == 58 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q2
    begin
      sorted_squares([-4,-1,0,3,10])  == [0,1,9,16,100] ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q3
    begin
      unique_total([1,2,2,3,4,4,6,1]) == 9 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q4
    begin
      unique_char("racecar") == 3 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q5
    begin
      reverse_words("Hello") == "hlleo" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      reverse_words( "  Hello World!  ") == "wrld!o hlleo" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    #Q6
    begin
      m1 = Movie.new("Avengers", "02-29-2019")
    rescue
      m1 = nil
    end

    #Q6
    begin
      m2 = Movie.new("Avengers", "01-18-2019")
    rescue
      m2 = nil
    end

    begin
      m1.released_on == "Invalid Date" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m2.released_on == "Avengers - January 18 2019" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      m2.is_released? == "true" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # puts correct+wrong
    puts correct, wrong, correct+wrong
    return ( (correct * full).to_f / (wrong + correct) ).round(2)

  end
  puts scores