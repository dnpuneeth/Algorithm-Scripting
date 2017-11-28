class Queue

    def initialize
        @queue = []
    end

    def enqueue(item)
        @queue.push(item)
    end

    # pop don't take any arguments
    def dequeue
        @queue.shift
        #or
        #element_to_pop = @queue[0]
        #for @queue.length - 2 times do |i|
        # @queue[i] = @queue[i+2]
        #return element_to_pop
    end
end
