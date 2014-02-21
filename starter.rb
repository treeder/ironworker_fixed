require 'iron_worker_ng'

# Modify the following parameters

num_to_run = 10
worker_name = "hello" # DO NOT put 'starter' here

#########################################
# Shouldn't need to touch anything below here.

client = IronWorkerNG::Client.new
num_to_run.times do |i|
  puts "Starting #{i}"
  client.tasks.create(worker_name, "foo"=>"bar")
end
puts "Done."
