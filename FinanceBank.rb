
class Account 
  Interest_rate=0.06;

  def initialize(id,name,balance)
      @account_id=id;
      @customer_name=name;
      @balance=balance
      @customer_email="#{name}@gmail.com";
  end

  def fixeddeposit()
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
    
  def show_account_details
      puts "----------Account Details----------"
      puts "ID: #{@account_id}"
      puts "Customer Name: #{@customer_name}"
      puts "Customer Email: #{@customer_email}"
      puts "Account Type: #{@account_Type}"
      puts "Current Balance: #{@balance}"
  end

  def deposit(acc_no,amount,type)
    if acc_no==@account_id and type.eql?(@account_Type)
    @balance=@balance+amount
    puts "Amount is Deposited in Account"
    print "Now Balance is :-> ",@balance,"\n"
    end
  end

   #withdraw
  def withdraw
    puts "pls insert password"
    pass=gets.chomp.to_f
    if(pass==2.2)
        puts "insert amount"
        amount=gets.chomp().to_i
        @balance-=amount
        puts "trasaction done "
        puts "remaining balace is #{@balance}"
    else
        puts "bhai password galat hai"
    end
  end


  def checkbalance 
    if @balance>1000
        puts "balance is = #{@balance}"
    else
        puts "Not enough amount less than 1000 i.e. = #{@balance}"
    end
  end

  def print_rohit
    puts "Printed by Rohit Joshi"
  end
end

Acc=Account.new(1000,"Ramesh",5000);
Acc.show_interestRate();
Acc.checkbalance()
Acc.fixeddeposit()
Acc.show_account_details()
Acc.withdraw()
