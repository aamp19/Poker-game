#Atschuthan Paskaran (500898502)
#Marco Bozic (500896651)
defmodule Poker do

	#returns 1 if player1 royal flush clubs conditions are met
	def royalFlushclubsp1(cards) do 
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		p1first = Enum.at(player1,0)
		p1last = Enum.at(player1,4)
		
		if ((Enum.at(player1,0)==1) && (Enum.at(player1,1)==10) && (Enum.at(player1,2)==11)&& (Enum.at(player1,3)==12) && (Enum.at(player1,4)==13)) do	
			1
		else
			0
		end
	end
	
	#returns 1 if player2 royal flush clubs conditions are met
	def royalFlushclubsp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		p2first = Enum.at(player2,0)
		p2last = Enum.at(player2,4)
		
		if ((Enum.at(player2,0)==1) && (Enum.at(player2,1)==10) && (Enum.at(player2,2)==11)&& (Enum.at(player2,3)==12) && (Enum.at(player2,4)==13)) do	
			1
		else
			0
		end
	end
	
	#returns 1 if player1 royal flush diamonds conditions are met
	def royalFlushdiamondsp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		p1first = Enum.at(player1,0)
		p1last = Enum.at(player1,4)
		
		if ((Enum.at(player1,0)==14) && (Enum.at(player1,1)==23) && (Enum.at(player1,2)==24)&& (Enum.at(player1,3)==25) && (Enum.at(player1,4)==26)) do	
			1
		else
			0
		end
	end
	
	#returns 1 if player2 royal flush diamonds conditions are met
	def royalFlushdiamondsp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		p2first = Enum.at(player2,0)
		p2last = Enum.at(player2,4)
		
		if ((Enum.at(player2,0)==14) && (Enum.at(player2,1)==23) && (Enum.at(player2,2)==24)&& (Enum.at(player2,3)==25) && (Enum.at(player2,4)==26)) do	
			1
		else
			0
		end
	end
	
	#returns 1 if player1 royal flush hearts conditions are met
	def royalFlushheartssp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		p1first = Enum.at(player1,0)
		p1last = Enum.at(player1,4)
		
		if ((Enum.at(player1,0)==27) && (Enum.at(player1,1)==36) && (Enum.at(player1,2)==37)&& (Enum.at(player1,3)==38) && (Enum.at(player1,4)==39)) do	
			1
		else
			0
		end
	end
	
	#returns 1 if player2 royal flush hearts conditions are met
	def royalFlushheartssp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		p2first = Enum.at(player2,0)
		p2last = Enum.at(player2,4)
		
		if ((Enum.at(player2,0)==27) && (Enum.at(player2,1)==36) && (Enum.at(player2,2)==37)&& (Enum.at(player2,3)==38) && (Enum.at(player2,4)==39)) do	
			1
		else
			0
		end
	end
	
	#returns 1 if player1 royal flush spades conditions are met
	def royalFlushspadessp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		p1first = Enum.at(player1,0)
		p1last = Enum.at(player1,4)
		
		if ((Enum.at(player1,0)==40) && (Enum.at(player1,1)==49) && (Enum.at(player1,2)==50)&& (Enum.at(player1,3)==51) && (Enum.at(player1,4)==52)) do	
			1
		else
			0
		end
	end
	
	#returns 1 if player2 royal flush spades conditions are met
	def royalFlushspadessp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		p2first = Enum.at(player2,0)
		p2last = Enum.at(player2,4)
		
		if ((Enum.at(player2,0)==40) && (Enum.at(player2,1)==49) && (Enum.at(player2,2)==50)&& (Enum.at(player2,3)==51) && (Enum.at(player2,4)==52)) do	
			1
		else
			0
		end
	end
	
	#returns 100000000 if player 1 is a royal flush
	def royalFlushMainp1(cards) do
		if (royalFlushclubsp1(cards) == 1 || royalFlushdiamondsp1(cards)==1 || royalFlushheartssp1(cards)==1 || royalFlushspadessp1(cards)==1) do
			100000000
		else
			0
		end
	end
	
	#returns 100000000 if player 2 is a royal flush
	def royalFlushMainp2(cards) do
		if (royalFlushclubsp2(cards) == 1 || royalFlushdiamondsp2(cards)==1 || royalFlushheartssp2(cards)==1 || royalFlushspadessp2(cards)==1) do
			100000000
		else
			0
		end
	end
	
	#returns 1000 if player 1 is a straight
	def straightp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		
		fractions = remainderp1(cards)
		fractions = Enum.sort(fractions)
		
		if Float.round(Enum.at(fractions,0) - Enum.at(fractions,1),3) == Float.round(Enum.at(fractions,1) - Enum.at(fractions,2),3) && Float.round(Enum.at(fractions,2) - Enum.at(fractions,3),3) == Float.round(Enum.at(fractions,0) - Enum.at(fractions,1),3) && Float.round(Enum.at(fractions,3) - Enum.at(fractions,4),3) == Float.round(Enum.at(fractions,0) - Enum.at(fractions,1),3) do
			1000
		else
			0
		end
	end
	
	#returns 1000 if player 2 is a flush
	def straightp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		
		fractions = remainderp2(cards)
		fractions = Enum.sort(fractions)
		
		if Float.round(Enum.at(fractions,0) - Enum.at(fractions,1),3) == Float.round(Enum.at(fractions,1) - Enum.at(fractions,2),3) && Float.round(Enum.at(fractions,2) - Enum.at(fractions,3),3) == Float.round(Enum.at(fractions,0) - Enum.at(fractions,1),3) && Float.round(Enum.at(fractions,3) - Enum.at(fractions,4),3) == Float.round(Enum.at(fractions,0) - Enum.at(fractions,1),3) do
			1000
		else
			0
		end
	end
	
	#returns 1000000 if player1 is a four of a kind
	def four_Of_A_Kindp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		
		fractions = remainderp1(cards)
		fractions = Enum.sort(fractions)
		if ((Enum.at(fractions, 0) == Enum.at(fractions,1) && Enum.at(fractions, 1) == Enum.at(fractions,2) && Enum.at(fractions, 2) == Enum.at(fractions,3)) || (Enum.at(fractions, 1) == Enum.at(fractions,2) && Enum.at(fractions, 2) == Enum.at(fractions,3) && Enum.at(fractions, 3) == Enum.at(fractions,4))) do
			1000000
		else 
			0
		end
		
	end
	
	#returns 1000000 if player2 is a four of a kind
	def four_Of_A_Kindp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		
		fractions = remainderp2(cards)
		fractions = Enum.sort(fractions)
		if ((Enum.at(fractions, 0) == Enum.at(fractions,1) && Enum.at(fractions, 1) == Enum.at(fractions,2) && Enum.at(fractions, 2) == Enum.at(fractions,3)) || (Enum.at(fractions, 1) == Enum.at(fractions,2) && Enum.at(fractions, 2) == Enum.at(fractions,3) && Enum.at(fractions, 3) == Enum.at(fractions,4))) do
			1000000
		else 
			0
		end
		
	end
	
	#returns 100000 if player1 is a full house
	def full_Housep1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		
		player1 = Enum.sort(player1)
		fractions = remainderp1(cards)
		fractions = Enum.sort(fractions)
		if (((Enum.at(fractions,0)==Enum.at(fractions,1) && Enum.at(fractions,1)==Enum.at(fractions,2)) && Enum.at(fractions,3) == Enum.at(fractions,4)) || (Enum.at(fractions,0)==Enum.at(fractions,1) && (Enum.at(fractions,2)==Enum.at(fractions,3) && Enum.at(fractions,3)==Enum.at(fractions,4)))) do
			100000
		else
			0
		end
	end
	
	#returns 100000 if player2 is a full house
	def full_Housep2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		
		player2 = Enum.sort(player2)
		fractions = remainderp2(cards)
		fractions = Enum.sort(fractions)
		if (((Enum.at(fractions,0)==Enum.at(fractions,1) && Enum.at(fractions,1)==Enum.at(fractions,2)) && Enum.at(fractions,3) == Enum.at(fractions,4)) || (Enum.at(fractions,0)==Enum.at(fractions,1) && (Enum.at(fractions,2)==Enum.at(fractions,3) && Enum.at(fractions,3)==Enum.at(fractions,4)))) do
			100000
		else
			0
		end
	end
	
	#returns 1 if player1 flush for clubs conditions are met
	def flushclubsp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		if (Enum.at(player1,0) <= 13 && Enum.at(player1,1) <= 13 && Enum.at(player1,2) <= 13 && Enum.at(player1,3) <= 13 && Enum.at(player1,4) <= 13) do
			1
		else
			0
		end
	end
	
	#returns 1 if player2 flush for clubs conditions are met
	def flushclubsp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		if (Enum.at(player2,0) <= 13 && Enum.at(player2,1) <= 13 && Enum.at(player2,2) <= 13 && Enum.at(player2,3) <= 13 && Enum.at(player2,4) <= 13) do
			1
		else
			0
		end
	end
	
	#returns 1 if player1 flush for diamonds conditions are met
	def flushdiamondsp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		if ((Enum.at(player1,0) <= 26 && Enum.at(player1,0) >= 14) &&(Enum.at(player1,1) <= 26 && Enum.at(player1,1) >= 14) &&(Enum.at(player1,2) <= 26 && Enum.at(player1,2) >= 14) &&(Enum.at(player1,3) <= 26 && Enum.at(player1,3) >= 14) &&(Enum.at(player1,4) <= 26 && Enum.at(player1,4) >= 14)) do
			1
		else
			0
		end
	end
	
	#returns 1 if player2 flush for diamonds conditions are met
	def flushdiamondsp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		if ((Enum.at(player2,0) <= 26 && Enum.at(player2,0) >= 14) &&(Enum.at(player2,1) <= 26 && Enum.at(player2,1) >= 14) &&(Enum.at(player2,2) <= 26 && Enum.at(player2,2) >= 14) &&(Enum.at(player2,3) <= 26 && Enum.at(player2,3) >= 14) &&(Enum.at(player2,4) <= 26 && Enum.at(player2,4) >= 14)) do
			1
		else
			0
		end
	end	
	
	#returns 1 if player1 flush for hearts conditions are met
	def flushheartsp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		if ((Enum.at(player1,0) <= 39 && Enum.at(player1,0) >= 27) &&(Enum.at(player1,1) <= 39 && Enum.at(player1,1) >= 27) &&(Enum.at(player1,2) <= 39 && Enum.at(player1,2) >= 27) &&(Enum.at(player1,3) <= 39 && Enum.at(player1,3) >= 27) &&(Enum.at(player1,4) <= 39 && Enum.at(player1,4) >= 27)) do
			1
		else
			0
		end
	end
	
	#returns 1 if player2 flush for hearts conditions are met
	def flushheartsp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		if ((Enum.at(player2,0) <= 39 && Enum.at(player2,0) >= 27) &&(Enum.at(player2,1) <= 39 && Enum.at(player2,1) >= 27) &&(Enum.at(player2,2) <= 39 && Enum.at(player2,2) >= 27) &&(Enum.at(player2,3) <= 39 && Enum.at(player2,3) >= 27) &&(Enum.at(player2,4) <= 39 && Enum.at(player2,4) >= 27)) do
			1
		else
			0
		end
	end	
	
	#returns 1 if player1 flush for spades conditions are met
	def flushspadesp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		if ((Enum.at(player1,0) <= 52 && Enum.at(player1,0) >= 40) &&(Enum.at(player1,1) <= 52 && Enum.at(player1,1) >= 40) &&(Enum.at(player1,2) <= 52 && Enum.at(player1,2) >= 40) &&(Enum.at(player1,3) <= 52 && Enum.at(player1,3) >= 40) &&(Enum.at(player1,4) <= 52 && Enum.at(player1,4) >= 40)) do
			1
		else
			0
		end
	end
	
	#returns 1 if player2 flush for spades conditions are met
	def flushspadesp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		if ((Enum.at(player2,0) <= 52 && Enum.at(player2,0) >= 40) &&(Enum.at(player2,1) <= 52 && Enum.at(player2,1) >= 40) &&(Enum.at(player2,2) <= 52 && Enum.at(player2,2) >= 40) &&(Enum.at(player2,3) <= 52 && Enum.at(player2,3) >= 40) &&(Enum.at(player2,4) <= 52 && Enum.at(player2,4) >= 40)) do
			1
		else
			0
		end
	end
	
	#returns 10000 if player1 flush conditions are met
	def flushMainp1(cards) do
		if (flushclubsp1(cards) == 1 || flushdiamondsp1(cards) == 1 || flushheartsp1(cards) == 1 || flushspadesp1(cards) == 1) do
			10000
		else
			0
		end
	end
	
	#returns 10000 if player2 flush conditions are met
	def flushMainp2(cards) do
		if (flushclubsp2(cards) == 1 || flushdiamondsp2(cards) == 1 || flushheartsp2(cards) == 1 || flushspadesp2(cards) == 1) do
			10000
		else
			0
		end
	end
	
	#returns 10000000 if player1 is a straight flush
	def straightFlushp1(cards) do
		p1winner = 0
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		p1first = Enum.at(player1,0)
		p1last = Enum.at(player1,4)
		player1_sum = Enum.reduce(player1,fn(x,acc) -> x+acc end)
		if (!(Enum.any?(player1, fn(n) -> n==1 end) || Enum.any?(player1, fn(n) -> n==14 end) || Enum.any?(player1, fn(n) -> n==27 end) || Enum.any?(player1, fn(n) -> n==40 end))) do
	
			if (((rem player1_sum,5)==0) && (((p1first<13) && (p1last<=13)) || ((p1first>13 && p1first<=26) && (p1last>13 && p1last<=26)) || ((p1first>26 && p1first<=39) && (p1last>26 && p1last<=39)) || ((p1first>39 && p1first<=52) && (p1last>39 && p1last<=52))) && p1last == (p1first+4)) do
				10000000
			else 
				0
			end	
		else
			0
		end
	end
	
	#returns 10000000 if player2 is a straight flush
	def straightFlushp2(cards) do
		p2winner = 0
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		p2first = Enum.at(player2,1)
		p2last = Enum.at(player2,4)
		player2_sum = Enum.reduce(player2,fn(x,acc) -> x+acc end)
		
		if (((rem player2_sum,5)==0) && (((p2first<13) && (p2last<=13)) || ((p2first>13 && p2first<=26) && (p2last>13 && p2last<=26)) || ((p2first>26 && p2first<=39) && (p2last>26 && p2last<=39)) || ((p2first>39 && p2first<=52) && (p2last>39 && p2last<=52))) && p2last == (p2first+4)) do
			10000000
		else
			0
		end
	end
	
	#returns 100 if player1 is a three of a kind
	def three_Of_A_Kindp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		fractions = remainderp1(cards)
		fractions = Enum.sort(fractions)
		
		if (((Enum.at(fractions, 0) == Enum.at(fractions,1) && Enum.at(fractions, 1) == Enum.at(fractions,2)) || (Enum.at(fractions, 1) == Enum.at(fractions,2) && Enum.at(fractions,2)== Enum.at(fractions,3)) || (Enum.at(fractions, 2) == Enum.at(fractions,3) && Enum.at(fractions, 3) == Enum.at(fractions,4)))) do
			100
		else 
			0
		end
			
	end
	
	#returns 100 if player2 is a three of a kind
	def three_Of_A_Kindp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractions = remainderp2(cards)
		fractions = Enum.sort(fractions)
		
		if (((Enum.at(fractions, 0) == Enum.at(fractions,1) && Enum.at(fractions, 1) == Enum.at(fractions,2)) || (Enum.at(fractions, 1) == Enum.at(fractions,2) && Enum.at(fractions,2)== Enum.at(fractions,3)) || (Enum.at(fractions, 2) == Enum.at(fractions,3) && Enum.at(fractions, 3) == Enum.at(fractions,4)))) do
			100
		else 
			0
		end	
	end
	
	#returns 10 if player1 is a two pair
	def two_Pairp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		fractions = remainderp1(cards)
		fractions = Enum.sort(fractions)
		if ((Enum.at(fractions,0)==Enum.at(fractions,1) && Enum.at(fractions,2) == Enum.at(fractions,3)) || (Enum.at(fractions,1)==Enum.at(fractions,2) && Enum.at(fractions,3)==Enum.at(fractions,4)) || (Enum.at(fractions,0)==Enum.at(fractions,1) && Enum.at(fractions,3)==Enum.at(fractions,4))) do
			10
		else
			0
		end
	end
	
	#returns 10 if player2 is a two pair
	def two_Pairp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractions = remainderp2(cards)
		fractions = Enum.sort(fractions)
		if ((Enum.at(fractions,0)==Enum.at(fractions,1) && Enum.at(fractions,2) == Enum.at(fractions,3)) || (Enum.at(fractions,1)==Enum.at(fractions,2) && Enum.at(fractions,3)==Enum.at(fractions,4)) || (Enum.at(fractions,0)==Enum.at(fractions,1) && Enum.at(fractions,3)==Enum.at(fractions,4))) do
			10
		else
			0
		end
	end
	
	#returns 1 if player1 is a pair
	def one_Pairp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		fractions = remainderp1(cards)
		fractions = Enum.sort(fractions)
		
		if ((Enum.at(fractions,0) == Enum.at(fractions,1)) || (Enum.at(fractions,1) == Enum.at(fractions,2)) || (Enum.at(fractions,2) == Enum.at(fractions,3)) || (Enum.at(fractions,3)==Enum.at(fractions,4))) do
			1
		else
			0
		end
	end
	
	#returns 1 if player2 is a pair
	def one_Pairp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractions = remainderp2(cards)
		fractions = Enum.sort(fractions)
		
		if ((Enum.at(fractions,0) == Enum.at(fractions,1)) || (Enum.at(fractions,1) == Enum.at(fractions,2)) || (Enum.at(fractions,2) == Enum.at(fractions,3)) || (Enum.at(fractions,3)==Enum.at(fractions,4))) do
			1
		else
			0
		end
	end	
	
	#returns a list of decimals that represents cards 2 - ACE for player1
	def remainderp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		decimal = Enum.map(player1, fn(n) -> n/13 end)
		remainder = Enum.map(decimal, fn(n) -> n - trunc(n) end)
		remainder = Enum.map(remainder, fn(n) -> Float.round(n,4) end)
		remainder
	end
	
	#returns a list of decimals that represents cards 2 - ACE for player2
	def remainderp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		decimal = Enum.map(player2, fn(n) -> n/13 end)
		remainder = Enum.map(decimal, fn(n) -> n - trunc(n) end)
		remainder = Enum.map(remainder, fn(n) -> Float.round(n,4) end)
		remainder
	end
	
	#returns 1000000000 if player1 is a highcard
	def high_Cardp1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		sump1 = one_Pairp1(cards) + two_Pairp1(cards) + three_Of_A_Kindp1(cards) + straightp1(cards) + flushMainp1(cards) + full_Housep1(cards) + four_Of_A_Kindp1(cards) + straightFlushp1(cards) + royalFlushMainp1(cards)
		if (sump1 < 1) do
			1000000000
		else
			0
		end
	end

	#returns 1000000000 if player2 is a highcard
	def high_Cardp2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		sump2 = one_Pairp2(cards) + two_Pairp2(cards) + three_Of_A_Kindp2(cards) + straightp2(cards) + flushMainp2(cards) + full_Housep2(cards) + four_Of_A_Kindp2(cards) + straightFlushp2(cards) + royalFlushMainp2(cards)
		
		if (sump2 < 1) do
			1000000000
		else
			0
		end
	end	
	
	#sets priority for each of the poker hands for player1
	def rankerp1(cards) do
		sump1 = high_Cardp1(cards) + one_Pairp1(cards) + two_Pairp1(cards) + three_Of_A_Kindp1(cards) + straightp1(cards) + flushMainp1(cards) + full_Housep1(cards) + four_Of_A_Kindp1(cards) + straightFlushp1(cards) + royalFlushMainp1(cards)
		cond do
			(sump1>= 100000000 && sump1<1000000000)  -> 10
			(sump1<100000000 && sump1>=10000000) -> 9
			(sump1<10000000 && sump1>=1000000) -> 8
			(sump1<1000000 && sump1>=100000) -> 7
			(sump1<100000 && sump1>=10000) -> 6
			(sump1<10000 && sump1>=1000) -> 5
			(sump1<1000 && sump1>=100) -> 4
			(sump1<100 && sump1>=10) -> 3
			(sump1<10 && sump1>=1) -> 2
			(sump1 >= 1000000000) ->1
		end
	end
	
	#sets priority for each of the poker hands for player2
	def rankerp2(cards) do
		sump2 = high_Cardp2(cards) + one_Pairp2(cards) + two_Pairp2(cards) + three_Of_A_Kindp2(cards) + straightp2(cards) + flushMainp2(cards) + full_Housep2(cards) + four_Of_A_Kindp2(cards) + straightFlushp2(cards) + royalFlushMainp2(cards)
		cond do
			(sump2 >= 100000000 && sump2<1000000000)  -> 10
			(sump2<100000000 && sump2>=10000000) -> 9
			(sump2<10000000 && sump2>=1000000) -> 8
			(sump2<1000000 && sump2>=100000) -> 7
			(sump2<100000 && sump2>=10000) -> 6
			(sump2<10000 && sump2>=1000) -> 5
			(sump2<1000 && sump2>=100) -> 4
			(sump2<100 && sump2>=10) -> 3
			(sump2<10 && sump2>=1) -> 2
			(sump2 >= 1000000000) ->1
		end
	end
	
	#returns the winning hand
	def deal(cards) do
		p1rank = rankerp1(cards)
		p2rank = rankerp2(cards)
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		if (p1rank>p2rank) do

			output1(cards)
		end
		
		if (p2rank>p1rank) do
			output2(cards)
		end
		if (p1rank == p2rank) do
			cond do
				(p1rank == 10) -> tiebreakerRoyalFlush(cards)
				(p1rank == 9) -> tiebreakerstraightflush(cards)
				(p1rank == 8) -> tiebreakerfour_of_a_kind(cards)
				(p1rank == 7) -> tiebreakerFullhouse(cards)
				(p1rank == 6) -> tiebreakerflush(cards)
				(p1rank == 5) -> tiebreakerstraight(cards)
				(p1rank == 4) -> tiebreakerThreeOfAKind(cards)
				(p1rank == 3) -> tiebreakerTwopair(cards)
				(p1rank == 2) -> tiebreakerpair(cards)
				(p1rank == 1) -> tiebreakerHighcard(cards)
			end	
		end
		
	end
	
	#returns winning hand for tie breaker of four of a kind
	def tiebreakerfour_of_a_kind(cards) do
		p1rank = rankerp1(cards)
		p2rank = rankerp2(cards)
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractionsp1 = remainderp1(cards)
		fractionsp1 = Enum.sort(fractionsp1)
		fractionsp2 = remainderp1(cards)
		fractionsp2 = Enum.sort(fractionsp2)
		if ((((Enum.at(player1,0)==1 || Enum.at(player1,0)==14 || Enum.at(player1,0)==27 || Enum.at(player1,0)==40) && Enum.at(fractionsp1,1)== Enum.at(fractionsp1,0)) || (Enum.at(player1,3)==1 || Enum.at(player1,3)==14 ||Enum.at(player1,3)==27 || Enum.at(player1,3)==40)) && (Enum.at(fractionsp1,4)==Enum.at(fractionsp1,3)))do
			output1(cards)
		end
		if ((((Enum.at(player2,0)==1 || Enum.at(player2,0)==14 || Enum.at(player2,0)==27 || Enum.at(player2,0)==40) && Enum.at(fractionsp2,1)== Enum.at(fractionsp2,0)) || (Enum.at(player2,3)==1 || Enum.at(player2,3)==14 ||Enum.at(player2,3)==27 || Enum.at(player2,3)==40)) && (Enum.at(fractionsp2,4)==Enum.at(fractionsp2,3)))do
			output2(cards)
		end
		
		if (!(Enum.any?(player1, fn(n) -> n==1 end) || Enum.any?(player1, fn(n) -> n==14 end) || Enum.any?(player1, fn(n) -> n==27 end) || Enum.any?(player1, fn(n) -> n==40 end)) && !(Enum.any?(player2, fn(n) -> n==1 end) || Enum.any?(player2, fn(n) -> n==14 end) || Enum.any?(player2, fn(n) -> n==27 end) || Enum.any?(player2, fn(n) -> n==40 end))) do
			cond do
				((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1)) && (Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp1,0)>Enum.at(fractionsp2,0)) || (Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,0)>Enum.at(fractionsp2,4)) || (Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp1,3)>Enum.at(fractionsp2,0)) || (Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,3)>Enum.at(fractionsp2,3))) ->output1(cards)
				((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1)) && (Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp1,0)<Enum.at(fractionsp2,0)) || (Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,0)<Enum.at(fractionsp2,4)) || (Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp1,3)<Enum.at(fractionsp2,0)) || (Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,3)<Enum.at(fractionsp2,3))) ->output2(cards)
				end
		end
	end
	
	#returns winning hand for tie breaker of two pair
	def tiebreakerTwopair(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractionsp1 = remainderp1(cards)
		fractionsp1 = Enum.sort(fractionsp1)
		fractionsp2 = remainderp1(cards)
		fractionsp2 = Enum.sort(fractionsp2)
		
		if ((Enum.at(player1,0)==1 || Enum.at(player1,0)==14|| Enum.at(player1,0)==27|| Enum.at(player1,0)==40) || (Enum.at(player1,1)==1 || Enum.at(player1,1)==14|| Enum.at(player1,1)==27|| Enum.at(player1,1)==40) || (Enum.at(player1,2)==1 || Enum.at(player1,2)==14|| Enum.at(player1,2)==27|| Enum.at(player1,2)==40)) do
			output1(cards)
		end
		
		if ((Enum.at(player2,0)==1 || Enum.at(player2,0)==14|| Enum.at(player2,0)==27|| Enum.at(player2,0)==40) || (Enum.at(player2,1)==1 || Enum.at(player2,1)==14|| Enum.at(player2,1)==27|| Enum.at(player2,1)==40) || (Enum.at(player2,2)==1 || Enum.at(player2,2)==14|| Enum.at(player2,2)==27|| Enum.at(player2,2)==40)) do
			output2(cards)
		end
	
		if ((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1)&&Enum.at(fractionsp1,2)==Enum.at(fractionsp1,3) && Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1)&&Enum.at(fractionsp2,2)==Enum.at(fractionsp2,3) && Enum.at(fractionsp1,3)>Enum.at(fractionsp2,3)) || (Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2) && Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) &&  Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,3)>Enum.at(fractionsp2,3))) do
			output1(cards)
		else
			output2(cards)
		end
	end
	
	#returns winning hand for tie breaker of three of a kind
	def tiebreakerThreeOfAKind(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)		
		fractionsp1 = remainderp1(cards)
		fractionsp1 = Enum.sort(fractionsp1)
		fractionsp2 = remainderp1(cards)
		fractionsp2 = Enum.sort(fractionsp2)
		
		if (((Enum.at(player1,0)==1 ||Enum.at(player1,0)==14 || Enum.at(player1,0)==27 || Enum.at(player1,0)== 27) && Enum.at(fractionsp1,2)==Enum.at(fractionsp1,0)) || ((Enum.at(player1,2)==1 || Enum.at(player1,2)==14 || Enum.at(player1,2)==27 || Enum.at(player1,2)==40) && Enum.at(fractionsp1,3)==Enum.at(fractionsp1,2)) || (Enum.at(player1,3)==1 || Enum.at(player1,3)==14 || Enum.at(player1,3)==27 || Enum.at(player1,3)==40) && Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4)) do
			output1(cards)
		end
		
		if (((Enum.at(player2,0)==1 ||Enum.at(player2,0)==14 || Enum.at(player2,0)==27 || Enum.at(player2,0)== 27) && Enum.at(fractionsp2,2)==Enum.at(fractionsp2,0)) || ((Enum.at(player2,2)==1 || Enum.at(player2,2)==14 || Enum.at(player2,2)==27 || Enum.at(player2,2)==40) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,2)) || (Enum.at(player2,3)==1 || Enum.at(player2,3)==14 || Enum.at(player2,3)==27 || Enum.at(player2,3)==40) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4)) do
			output2(cards)
		end
		
		if((((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2)) && (Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2)) && Enum.at(fractionsp1,1) > Enum.at(fractionsp2,2) && Enum.at(fractionsp1,0)>Enum.at(fractionsp2,0))) || (Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2) && Enum.at(fractionsp1,2)==Enum.at(fractionsp1,3)) && (Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2) && Enum.at(fractionsp2,2)==Enum.at(fractionsp2,3) && Enum.at(fractionsp1,2)>Enum.at(fractionsp2,2)) || (Enum.at(fractionsp1,2)==Enum.at(fractionsp1,3)&&Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,2)==Enum.at(fractionsp2,3) &&Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,3)>Enum.at(fractionsp2,3))) do
			output1(cards)
		end
		if(((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2)) && (Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2)) && Enum.at(fractionsp1,1) > Enum.at(fractionsp2,2) && Enum.at(fractionsp1,0)>Enum.at(fractionsp2,0)) || (Enum.at(fractionsp1,2)==Enum.at(fractionsp1,3) && Enum.at(fractionsp2,2)==Enum.at(fractionsp2,3) && Enum.at(fractionsp1,2)>Enum.at(fractionsp2,2)) || (Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,3)>Enum.at(fractionsp2,3))) do 
			output2(cards)
		else
			output1(cards)
		end
	end
	
	#returns winning hand for tie breaker of pair
	def tiebreakerpair(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractionsp1 = remainderp1(cards)
		fractionsp1 = Enum.sort(fractionsp1)
		fractionsp2 = remainderp1(cards)
		fractionsp2 = Enum.sort(fractionsp2)
		
		if ((Enum.any?(player1, fn(n) -> n==1 end) || Enum.any?(player1, fn(n) -> n==14 end) || Enum.any?(player1, fn(n) -> n==27 end) || Enum.any?(player1, fn(n) -> n==40 end)) && !(Enum.any?(player2, fn(n) -> n==1 end) || Enum.any?(player2, fn(n) -> n==14 end) || Enum.any?(player2, fn(n) -> n==27 end) || Enum.any?(player2, fn(n) -> n==40 end))) do
			output1(cards)
		end
		if (!(Enum.any?(player1, fn(n) -> n==1 end) || Enum.any?(player1, fn(n) -> n==14 end) || Enum.any?(player1, fn(n) -> n==27 end) || Enum.any?(player1, fn(n) -> n==40 end)) && (Enum.any?(player2, fn(n) -> n==1 end) || Enum.any?(player2, fn(n) -> n==14 end) || Enum.any?(player2, fn(n) -> n==27 end) || Enum.any?(player2, fn(n) -> n==40 end))) do
			output2(cards)
		end
		
		
		if ((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp1,2)>Enum.at(fractionsp2,2)) || (Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2) && Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2) && Enum.at(fractionsp1,2)>Enum.at(fractionsp2,2)) || (Enum.at(fractionsp1,2)==Enum.at(fractionsp1,3)&&Enum.at(fractionsp2,2)==Enum.at(fractionsp2,3)&& Enum.at(fractionsp1,2)>Enum.at(fractionsp2,3)) || (Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,3)>Enum.at(fractionsp2,4)) || (Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp1,0)==Enum.at(fractionsp2,0) && Enum.at(player1,1)>Enum.at(player2,1)) || (Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2) && Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2) && Enum.at(fractionsp1,2)==Enum.at(fractionsp2,2) && Enum.at(player1,2)>Enum.at(player2,2)) || (Enum.at(fractionsp1,2)==Enum.at(fractionsp1,3)&&Enum.at(fractionsp2,2)==Enum.at(fractionsp2,3)&& Enum.at(fractionsp1,2)==Enum.at(fractionsp2,3)&&Enum.at(player1,3)>Enum.at(player2,3)) || (Enum.at(fractionsp1,3)==Enum.at(fractionsp1,4) && Enum.at(fractionsp2,3)==Enum.at(fractionsp2,4) && Enum.at(fractionsp1,3)==Enum.at(fractionsp2,4) && Enum.at(player1,4)>Enum.at(player2,4))) do
			output1(cards)
		else 
			output2(cards)
		end 
	end
	
	#returns winning hand of tie breaker of flush
	def tiebreakerflush(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		cond do
			((Enum.at(player1,0)>=1 && Enum.at(player1,0)<=13) && Enum.at(player2,0)>13 || (Enum.at(player1,0)>=14 && Enum.at(player1,0)<=26 && Enum.at(player2,0)>26) || (Enum.at(player1,0)>=26 && Enum.at(player1,0)<=39 && Enum.at(player2,0)>39)) -> output2(cards)
			((Enum.at(player2,0)>=1 && Enum.at(player2,0)<=13) && Enum.at(player1,0)>13 || (Enum.at(player2,0)>=14 && Enum.at(player2,0)<=26 && Enum.at(player1,0)>26) || (Enum.at(player2,0)>=26 && Enum.at(player2,0)<=39 && Enum.at(player1,0)>39)) -> output1(cards)
			((Enum.at(player1,4)>=1 && Enum.at(player1,4)<=13 && Enum.at(player2,4)>=1 && Enum.at(player2,4)<=13 && Enum.at(player1,4)>Enum.at(player2,4)) || (Enum.at(player1,4)>=14 && Enum.at(player1,4)<=26 && Enum.at(player2,4)>=14 && Enum.at(player2,4)<=26 && Enum.at(player1,4)>Enum.at(player2,4)) || (Enum.at(player1,0)>=27 && Enum.at(player1,0)<=39 && Enum.at(player2,0)>=27 && Enum.at(player2,0)<=39 && Enum.at(player1,0)>Enum.at(player2,0)) || (Enum.at(player1,0)>=40 && Enum.at(player1,0)<=52 && Enum.at(player2,0)>=40 && Enum.at(player2,0)<=52 && Enum.at(player1,0)>Enum.at(player2,0))) ->output1(cards)
			((Enum.at(player1,4)>=1 && Enum.at(player1,4)<=13 && Enum.at(player2,4)>=1 && Enum.at(player2,4)<=13 && Enum.at(player1,4)>Enum.at(player2,4)) || (Enum.at(player1,4)>=14 && Enum.at(player1,4)<=26 && Enum.at(player2,4)>=14 && Enum.at(player2,4)<=26 && Enum.at(player1,4)<Enum.at(player2,4)) || (Enum.at(player1,0)>=27 && Enum.at(player1,0)<=39 && Enum.at(player2,0)>=27 && Enum.at(player2,0)<=39 && Enum.at(player1,0)<Enum.at(player2,0)) || (Enum.at(player1,0)>=40 && Enum.at(player1,0)<=52 && Enum.at(player2,0)>=40 && Enum.at(player2,0)<=52 && Enum.at(player1,0)<Enum.at(player2,0))) ->output2(cards)
			end
		
	end
	
	#returns winning hand of tie breaker for straight flush
	def tiebreakerstraightflush(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		
		if (Enum.at(player1,0)>Enum.at(player2,0)) do
			output1(cards)
		else
			output2(cards)
		end
	end
	
	#returns winning hand of tie breaker of royal flush
	def tiebreakerRoyalFlush(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		if (Enum.at(player1,0)>Enum.at(player2,0)) do
			output1(cards)
		end
		
		if (Enum.at(player1,0)<Enum.at(player2,0)) do
			output2(cards)
		else
			output1(cards)
		end
	end
	
	#returns winning hand of tie breaker for full house
	def tiebreakerFullhouse(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractionsp1 = remainderp1(cards)
		fractionsp1 = Enum.sort(fractionsp1)
		fractionsp2 = remainderp1(cards)
		fractionsp2 = Enum.sort(fractionsp2)
		
		if ((Enum.at(player1,0)==1 || Enum.at(player1,0)==14 || Enum.at(player1,0)==27 || Enum.at(player1,0)==40) && Enum.at(fractionsp1,1)==Enum.at(fractionsp1,0) && Enum.at(fractionsp1,2)==Enum.at(fractionsp1,0)) do
			output1(cards)
		end
		
		if ((Enum.at(player2,0)==1 || Enum.at(player2,0)==14 || Enum.at(player2,0)==27 || Enum.at(player2,0)==40) && Enum.at(fractionsp2,1)==Enum.at(fractionsp2,0) && Enum.at(fractionsp2,2)==Enum.at(fractionsp2,0)) do
			output2(cards)
		end
		if (!(Enum.any?(player1, fn(n) -> n==1 end) || Enum.any?(player1, fn(n) -> n==14 end) || Enum.any?(player1, fn(n) -> n==27 end) || Enum.any?(player1, fn(n) -> n==40 end)) && !(Enum.any?(player2, fn(n) -> n==1 end) || Enum.any?(player2, fn(n) -> n==14 end) || Enum.any?(player2, fn(n) -> n==27 end) || Enum.any?(player2, fn(n) -> n==40 end))) do
			cond do
				((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2)) && (Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2)) && Enum.at(player1,0)>Enum.at(player2,0)) -> output1(cards)
				((Enum.at(fractionsp1,0)==Enum.at(fractionsp1,1) && Enum.at(fractionsp1,1)==Enum.at(fractionsp1,2)) && (Enum.at(fractionsp2,0)==Enum.at(fractionsp2,1) && Enum.at(fractionsp2,1)==Enum.at(fractionsp2,2)) && Enum.at(player1,0)<Enum.at(player2,0)) -> output2(cards)
			end
		else
		output1(cards)
		end
	end
	
	#returns winning hand of tie breaker of high card 
	def tiebreakerHighcard(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		fractionsp1 = remainderp1(cards)
		fractionsp1 = Enum.sort(fractionsp1)
		fractionsp2 = remainderp1(cards)
		fractionsp2 = Enum.sort(fractionsp2)
		
		if (Enum.at(fractionsp1,4)>Enum.at(fractionsp2,4)) do
			output1(cards)
		end
		if (Enum.at(fractionsp1,4)<Enum.at(fractionsp2,4)) do 
			output2(cards)
		else
			output1(cards)
		end
		
	end
	
	#returns winning hand of tie breaker of straight
	def tiebreakerstraight(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		
		if (Enum.at(player1,0)==1 || Enum.at(player1,0)==14 || Enum.at(player1,0)==27 || Enum.at(player1,0)==40) do
			output1(cards)
		end
		if (Enum.at(player2,0)==1 || Enum.at(player2,0)==14 || Enum.at(player2,0)==27 || Enum.at(player2,0)==40) do
			output2(cards)
		end
		if (!(Enum.any?(player1, fn(n) -> n==1 end) || Enum.any?(player1, fn(n) -> n==14 end) || Enum.any?(player1, fn(n) -> n==27 end) || Enum.any?(player1, fn(n) -> n==40 end)) && !(Enum.any?(player2, fn(n) -> n==1 end) || Enum.any?(player2, fn(n) -> n==14 end) || Enum.any?(player2, fn(n) -> n==27 end) || Enum.any?(player2, fn(n) -> n==40 end))) do
			cond do
				Enum.at(player1,0)>Enum.at(player2,0) -> output1(cards)
				Enum.at(player1,0)<Enum.at(player2,0) -> output2(cards)
			end
		else
			output2(cards)
		end
	end
	
	#adds the associated suit to each of the cards
	def concatenate(variable) do
        cond do
            variable >= 1 && variable<=13 -> Enum.join([variable, "C"], "")
            variable >= 14 && variable<=26 -> Enum.join([variable-13, "D"], "")
            variable >= 27 && variable<=39 -> Enum.join([variable-26, "H"], "")
            variable >= 40 && variable<=52 -> Enum.join([variable-39, "S"], "")
        end
	end
	
	#outputs the list of player1 with all the associated suits
	def output1(cards) do
		player1 = [Enum.at(cards,0),Enum.at(cards,2),Enum.at(cards,4),Enum.at(cards,6),Enum.at(cards,8)]
		player1 = Enum.sort(player1)
		v1p1 = Enum.at(player1,0)
		v2p1 = Enum.at(player1,1)
		v3p1 = Enum.at(player1,2)
		v4p1 = Enum.at(player1,3)
		v5p1 = Enum.at(player1,4)
		v1p1 = concatenate(v1p1)
        v2p1 = concatenate(v2p1)
        v3p1 = concatenate(v3p1)
        v4p1 = concatenate(v4p1)
        v5p1 = concatenate(v5p1)
		outputp1 = [v1p1, v2p1, v3p1, v4p1, v5p1]
		outputp1 = Enum.sort(outputp1)
		IO.inspect outputp1
	end
	
	#outputs the list of player2 with all the associated suits
	def output2(cards) do
		player2 = [Enum.at(cards,1),Enum.at(cards,3),Enum.at(cards,5),Enum.at(cards,7),Enum.at(cards,9)]
		player2 = Enum.sort(player2)
		v1p2 = Enum.at(player2,0)
		v2p2 = Enum.at(player2,1)
		v3p2 = Enum.at(player2,2)
		v4p2 = Enum.at(player2,3)
		v5p2 = Enum.at(player2,4)
		v1p2 = concatenate(v1p2)
        v2p2 = concatenate(v2p2)
        v3p2 = concatenate(v3p2)
        v4p2 = concatenate(v4p2)
        v5p2 = concatenate(v5p2)
		outputp2 = [v1p2, v2p2, v3p2, v4p2, v5p2]
		outputp2 = Enum.sort(outputp2)
		IO.inspect outputp2
	end
end