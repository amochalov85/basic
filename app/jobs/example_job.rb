class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    p "Test"
  end
end
