# Part 1

  def two_sum(a,k)
      a.sort!
      max = 0
      a.each do |x| 
          a.to_enum.with_index.reverse_each do |y,z| 
              if x!=y then if x+y<k then if x+y>max then max = x+y; break 
                    end
                  end 
              end
          end
      end 
      return max>0? max:  -1
  end

  def sorted_squares(a)
    a.map { |n| n * n}.sort
  end

  def unique_total(a)
    # ADD YOUR CODE HERE
    hash = Hash.new(0)
    a.each{|key| hash[key] += 1}
    sum = 0
    hash.each{|x,y| sum+=x if y==1}
    return sum
  end

# Part 2

  def unique_char(s)
    s.split("").uniq.each do |c|
      if s.count(c).eql?(1)
        return s.index(c)
      end
    end
    return -1
  end

  def reverse_words(s)
    reverse = ''
    s = s.downcase!
    words = s.split
    words.reverse_each do |a|
      vowel = ''
      consonants = ''
      a.scan(/[^aeiou]/) { |c| consonants += c }
      a.scan(/[aeiou]/) { |v| vowel += v }
      reverse += consonants + vowel + ' '
    end
    reverse.strip
  end

# Part 3
  require 'date'
  class Movie
    attr_reader :name, :release_date

    def initialize(name, release_date)
      raise ArgumentError, 'Name cannot be nil' if name.nil? || name.strip.empty?
      raise ArgumentError, 'Release date cannot be nil' if release_date.nil? || release_date.strip.empty?
      unless release_date.match?(/^\d{2}-\d{2}-\d{4}$/)
        raise ArgumentError, 'Invalid Release date format. Enter date in MM-DD-YYYY format'
      end

      @name = name
      @release_date = release_date
    end

    def name=(name)
      raise ArgumentError, 'Name cannot be nil' if name.nil? || name.strip.empty?
      @name = name
    end
    
    def rating=(rating)
      raise ArgumentError, 'Rating cannot be nil' if rating.nil? || rating.strip.empty?
      @rating = rating
    end

    def release_date=(release_date)
      raise ArgumentError, 'Release date cannot be nil' if release_date.nil?  || release_date.strip.empty?
      unless release_date.match?(/^\d{2}-\d{2}-\d{4}$/)
        raise ArgumentError, 'Invalid Release date format. Enter date in MM-DD-YYYY format'
      end
      @release_date = release_date
    end

    def released_on
      begin
        d = Date.strptime(@release_date, '%m-%d-%Y')
        if d < Date.parse('1870-01-01') || d > Date.parse('2021-12-31')
          raise RuntimeError
        end
      rescue ArgumentError, RuntimeError
        return 'Invalid Date'
      end
      @name + ' - ' + d.strftime('%B %d %Y')
    end

    def is_released?
      begin
      d = Date.strptime(@release_date, '%m-%d-%Y')
      rescue ArgumentError
        return 'Invalid Date'
      end
      d <= Date.today ? 'true' : 'false'
      end
  end
