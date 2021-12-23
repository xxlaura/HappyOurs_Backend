class HardWorker
  include Sidekiq::Worker

  def perform
    # do something
  end
end
