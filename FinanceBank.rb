$interest_rate;
class Account
    @Account_id;
    @Customer_name;
    @Balance;
    @Customer_email;
    @Account_Type="Saving";
    
        def initialize(id,name,balance)
            @Account_id=id;
            @Customer_name=name;
            @Balance=balance
            @Customer_email="#{name}+@gmail.com";
        end
    


end
