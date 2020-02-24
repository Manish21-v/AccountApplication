$interest_rate;
class Account
    @account_id;
    @customer_name;
    @balance;
    @customer_email;
    @account_Type="Saving";
    
        def initialize(id,name,balance)
            @account_id=id;
            @customer_name=name;
            @balance=balance
            @customer_email="#{name}+@gmail.com";
        end
    
        def fixeddeposite()
            puts "enter how much money you want to invest in FD" 
            fd = gets.chomp.to_i
            totalamount = @balance.to_i - fd
            puts totalamount.to_i
            puts "now your remaining amount is :"+totalamount.to_s+" and your FD is :"+fd.to_s

        end


end

acc = Account.new(10,"onkar",10000)

acc.fixeddeposite()