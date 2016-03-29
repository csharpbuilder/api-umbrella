class ContactMailer < ActionMailer::Base
  default :from => "noreply@#{ApiUmbrellaConfig[:web][:default_host]}"

  def contact_email(contact)
    @contact = contact

    mail :reply_to => contact.email,
      :subject => "#{ApiUmbrellaConfig[:site_name]} Contact Message from #{contact.email}",
      :to => ApiUmbrellaConfig[:web][:contact_form_email]
  end
end
