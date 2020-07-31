require 'pry'

class CLI
   
    def start 
        puts" 
        HHHHHHHHH     HHHHHHHHH     OOOOOOOOO     TTTTTTTTTTTTTTTTTTTTTTTEEEEEEEEEEEEEEEEEEEEEELLLLLLLLLLL             
        H:::::::H     H:::::::H   OO:::::::::OO   T:::::::::::::::::::::TE::::::::::::::::::::EL:::::::::L             
        H:::::::H     H:::::::H OO:::::::::::::OO T:::::::::::::::::::::TE::::::::::::::::::::EL:::::::::L             
        HH::::::H     H::::::HHO:::::::OOO:::::::OT:::::TT:::::::TT:::::TEE::::::EEEEEEEEE::::ELL:::::::LL             
          H:::::H     H:::::H  O::::::O   O::::::OTTTTTT  T:::::T  TTTTTT  E:::::E       EEEEEE  L:::::L               
          H:::::H     H:::::H  O:::::O     O:::::O        T:::::T          E:::::E               L:::::L               
          H::::::HHHHH::::::H  O:::::O     O:::::O        T:::::T          E::::::EEEEEEEEEE     L:::::L               
          H:::::::::::::::::H  O:::::O     O:::::O        T:::::T          E:::::::::::::::E     L:::::L               
          H:::::::::::::::::H  O:::::O     O:::::O        T:::::T          E:::::::::::::::E     L:::::L               
          H::::::HHHHH::::::H  O:::::O     O:::::O        T:::::T          E::::::EEEEEEEEEE     L:::::L               
          H:::::H     H:::::H  O:::::O     O:::::O        T:::::T          E:::::E               L:::::L               
          H:::::H     H:::::H  O::::::O   O::::::O        T:::::T          E:::::E       EEEEEE  L:::::L         LLLLLL
        HH::::::H     H::::::HHO:::::::OOO:::::::O      TT:::::::TT      EE::::::EEEEEEEE:::::ELL:::::::LLLLLLLLL:::::L
        H:::::::H     H:::::::H OO:::::::::::::OO       T:::::::::T      E::::::::::::::::::::EL::::::::::::::::::::::L
        H:::::::H     H:::::::H   OO:::::::::OO         T:::::::::T      E::::::::::::::::::::EL::::::::::::::::::::::L
        HHHHHHHHH     HHHHHHHHH     OOOOOOOOO           TTTTTTTTTTT      EEEEEEEEEEEEEEEEEEEEEELLLLLLLLLLLLLLLLLLLLLLLL                                                                                                      
        "                                                                                                                                                                       
       
        puts "Welcome to HotelApp! would you like to login?"
        response = gets.chomp 
        if response == "yes" 
            puts "What is your first name?"
            first_name = gets.chomp
            puts "Thank you #{first_name}, What is your last name?"
            last_name = gets.chomp
            guest = Guest.login(first_name,last_name)
        else
            puts "Have a great day!"
        end
        menu(guest)
    end

    def menu(guest)
        puts "To Book a Room type 'book'. To view your room reservation type 'view_reservation' "
        book_response = gets.chomp
            if book_response == "book" 
                # puts "Here are our available dates"
                # available_dates = Guest.availability
                # available_dates
                puts "What date would you like to book"
                date_response = gets.chomp
                booking = Guest.book_a_room(date_response)
                
                puts "Here is your confirmation number"
                confirmation = Faker::Alphanumeric.alphanumeric(number: 10)
                return confirmation
                binding.pry

            elsif book_response == "view_reservation"
                puts "Here is your reservation"
        end
    end


    
end

