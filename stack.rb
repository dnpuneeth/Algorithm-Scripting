class Stack
    def initialize
        @stack = []
    end

    def push(item)
        @stack.push(item)
    end

    def pop()
        @stack.pop()
    end

    def length()
        @stack.length()
    end

    def peek()
        @stack.last #or @stack[-1] or @stack[@stack.length -1]
    end
end

