module EmailCollector
  class Email
    # YOUR CODE HERE
    def initialize(email)
      @email = email
    end
    def save
      if @email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
        File.open(EmailCollector::DATABASE, "w+"){ |i| i.write(@email)}
        true
      else
        @errors = 'Invalide email format'
        false
      end
    end
  end
end