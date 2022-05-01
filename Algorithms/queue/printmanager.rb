require_relative 'queue'

class PrintManager

  def initialize
    @queue = Queue.new
  end

  def queue_print_job(document)
    @queue.enqueue(document)
  end

  def run
    while @queue.read
      print(@queue.dequeue)
    end
  end

  private

  def print(document)
    puts document
  end
end
