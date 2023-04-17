FactoryBot.define do
  factory :customer do
      name {"john doe"}
      address {"1234 rails"} 
      email {"joe@gmail.com"} 
      phone {"713456789"} 
      registration_date {Date.today}
      status {"current"} 
      notification_type {"sms"}
  end
end
