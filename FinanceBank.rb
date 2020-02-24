
class Account
    @account_id;
    @customer_name;
    @balance;
    @customer_email;
    @account_Type="Saving";
    
    Interest_rate=0.06; 
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

            @account_Type="Saving";
        end
    
        def show_interestRate()
            amount=@balance*Interest_rate;
            puts " Your interest on the Balance : #{@balance +amount}";
        end


end

acc = Account.new(10,"onkar",10000)

acc.fixeddeposite()
Acc=Account.new(1000,"Ramesh",5000);
Acc.show_interestRate();




