module MyEnumerable
    def list
        @list ||= []

    def all?
        return unless block_given?

        value = true
        list.each do |e|
            value = false unless yeild e
        end
        value     
    end
  
    def any?
        return unless block_given?

        value = false
        list.each do |e|
            value = true if yeild e
        end
        value
      
    end
  
    def my_filter?
        return unless block_given?

        arr = []
        list.each do |e|
            arr.push(e) if yeild e
        end
        arr
    end
  end