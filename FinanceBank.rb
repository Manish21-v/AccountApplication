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
        def checkbalance 
            if @balance>1000
                puts "balance is = #{@balance}"
            else
                puts "Not enough amount less than 1000 i.e. = #{@balance}"
            end
        end
end
acc=Account.new(11,"Josh",12000)
acc.checkbalance