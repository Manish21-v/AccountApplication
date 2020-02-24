
class Account
    Interest_rate=0.06; 
        def initialize(id,name,balance)
            @account_id=id;
            @customer_name=name;
            @balance=balance
            @customer_email="#{name}+@gmail.com";
            @account_Type="Saving";
        end
    
        def show_interestRate()
            amount=@balance*Interest_rate;
            puts " Your interest on the Balance : #{@balance +amount}";
        end


end

Acc=Account.new(1000,"Ramesh",5000);
Acc.show_interestRate();




