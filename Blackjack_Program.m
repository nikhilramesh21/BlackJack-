%Developer: Nikhil Ramesh 
%Date Coded: 10/28/2016
%Primary Objective: Write a program to play Blackjack 
%Developmental Objective: Use this program to develop a dominant strategy
%to play blackjack which will recommend a players best choice of move.  
%Still need to include: Betting Component


%Assigning the dealer 2 cards at random 
dealer_card_1= randi(10);
dealer_card_2=randi(10);
dealer_total=dealer_card_1+dealer_card_2;
dealer_show=min(dealer_card_1,dealer_card_2)

%Assigning the player 2 cards at random 
player_card_1= randi(10)
player_card_2=randi(10)
player_total=player_card_1+player_card_2


%Player loop for hit or stand 
while player_total<=21
player_choice=input('Enter your choice: 1(Hit) or 0(Stand): ');
if player_choice==1
    player_newcard=randi(10)
    player_total=player_total+player_newcard
    if  player_total>21
        fprintf('Sorry, you have bust, The dealer wins \n')
    end
elseif player_choice==0
    fprintf('You stand, it is the dealers chance \n')
    break
else 
    fprintf('Enter Valid Choice \n')
end
end 

%Dealer loop for hit or stand 
fprintf('The dealers first card is %i and second card is %i\n',dealer_card_1,dealer_card_2)    
while dealer_total<=21
    if player_total>21
        break
    end
    if dealer_total<17 %Using the popular Casino Strategy of the Dealer Standing at 17
        dealer_newcard=randi(10)
        dealer_total=dealer_total+dealer_newcard;
        if dealer_total>21
            fprintf('The dealer has bust, you win!! \n')
        end
    else
        fprintf('The dealer stands \n')
        break
    end
end

player_total
dealer_total

%Game result branching 
if player_total>dealer_total && player_total<=21 && dealer_total<=21
    fprintf('You win, the dealer loses \n')
elseif player_total<dealer_total && player_total<=21 && dealer_total<=21
    fprintf('Sorry you lose, The dealer wins \n')
elseif player_total==dealer_total && player_total<=21 && dealer_total<=21
    fprintf('The game has tied \n')
else   
end 
 



