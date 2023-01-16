class TriggersContactInWebhookJob
  include Sidekiq::Job

  def perform(contact)
    ContactService.new().post_contact(contact)
  end
end
