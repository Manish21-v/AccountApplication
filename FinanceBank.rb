
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

  def deposit(acc_no,amount,type)
    if acc_no==@account_id and type.eql?(@account_Type)
      @balance=@balance+amount
      puts "Amount is Deposited in Account"
      print "Now Balance is :-> ",@balance,"\n"
    end
  end
end

Acc=Account.new(1000,"Ramesh",5000);
Acc.show_interestRate();
Acc.deposit(1000,1300,"Saving")




