Document.ready? do

  display = Element.find("#btn_display")
  display.on(:click) do
    number_records = Element.find("#txt_records").val()
    if number_records == "" || number_records == "0"
      number_records = 1
    end

    user = User.new(number_records)
    user.render_get
  end

end

class User
  attr_accessor :users

  def initialize(users)
    @users = users
  end

  def total_users
    alert("There are #{@users} users")
  end

  def render_get
    url = "https://randomuser.me/api/?results=#{@users}"
    HTTP.get(url) do |response|
      data = response.json["results"]
      template(data)
    end
  end

  def template(data)
    Element.find('#tbody').html = ""
    i = 0
    data.each do |user|
      i = i+1
      row = "<tr>
              <td>#{i}</td>
              <td>#{user["name"]["first"]} #{user["name"]["last"]}</td>
              <td>#{user["gender"]}</td>
              <td>#{user["email"]}</td>
              <td>#{user["phone"]}</td>
            </tr>"
      Element.find('#tbody').append(row)
    end
  end

end