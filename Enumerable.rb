module MyEnumerable
    def list
        @list ||= []
    end

    def all?
        return unless block_given?

        value = true
        list.each do |e|
            value = false unless yield e
        end
        value     
    end
  
    def any?
        return unless block_given?

        value = false
        list.each do |e|
            value = true if yield e
        end
        value
      
    end
  
    def filter?
        return unless block_given?

        arr = []
        list.each do |e|
            arr.push(e) if yield e
        end
        arr
    end
  end