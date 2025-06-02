module ApplicationHelper
  def date_formatter(date)
    date.strftime('%b %d, %Y')
  end

  def user_initials(user)
    return "" if user.blank?

    first = user.first_name.to_s[0]
    last = user.last_name.to_s[0]

    "#{first}#{last}".upcase
  end
end
