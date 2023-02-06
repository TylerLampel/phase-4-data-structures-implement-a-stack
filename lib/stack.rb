class Stack

    def initialize (limit = nil)
        @stack = []
        @limit = limit
    end

    def push(item)
        raise "Stack Overflow" if full?

        @stack.push(item)
    end

    def size
        @stack.length
    end

    def pop
        @stack.pop 
    end

    def search(target)
        @stack.each_with_index do |item, index|
            return size - index -1 if item == target
        end

        -1
    end

    def peek
        @stack.last
    end

    def empty?
        @stack.empty?
    end

    def full?
        @limit && @stack.size == @limit
    end
end