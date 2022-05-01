require_relative('printmanager')

print_manager = PrintManager.new

print_manager.queue_print_job('First Document')
print_manager.queue_print_job('Second Document')
print_manager.queue_print_job('Third Document')

print_manager.run
