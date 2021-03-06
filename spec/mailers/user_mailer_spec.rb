require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "email_deleted_user" do
    let(:mail) { UserMailer.email_deleted_user }

    it "renders the headers" do
      expect(mail.subject).to eq("Email deleted user")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
