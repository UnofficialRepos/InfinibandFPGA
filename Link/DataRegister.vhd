------------------------------------------------------------------------------
--                                                                          --
--    Copyright (C) 2008 Mark Ciecior                                       --
--                                                                          --
--    This file is part of the InfiniBand FPGA Project.                     --
--                                                                          --
--    This program is free software: you can redistribute it and/or modify  --
--    it under the terms of the GNU General Public License as published by  --
--    the Free Software Foundation, either version 3 of the License, or     --
--    (at your option) any later version.                                   --
--                                                                          --
--    This program is distributed in the hope that it will be useful,       --
--    but WITHOUT ANY WARRANTY; without even the implied warranty of        --
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         --
--    GNU General Public License for more details.                          --
--                                                                          --
--    You should have received a copy of the GNU General Public License     --
--    along with this program.  If not, see <http://www.gnu.org/licenses/>. --
--                                                                          --
------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity DataRegister is
	port(	
			--System clock
			clock : in STD_LOGIC;
			
			--These are the 8 bits from the physical layer
			rcv_stream : in STD_LOGIC_VECTOR(7 DOWNTO 0);
			
			--The 8 bits received from the phyiscal layer are passed through here
			all8 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
			
			--The upper two bits of the stream are output here
			--This represents the 2-bit LNH value
			first2 : out STD_LOGIC_VECTOR(1 DOWNTO 0);
			
			--The upper three bits of the stream are output here
			--This represents the three most significant bits
			--of the 11-bit Packet Length value
			first3 : out STD_LOGIC_VECTOR(2 DOWNTO 0);
			
			--The upper four bits of the stream are output here
			--This represents the VL in the second byte
			first4 : out STD_LOGIC_VECTOR(3 DOWNTO 0);
			
			--The lower four bits of the stream are output here
			--This represents the LVer in the second byte
			last4 : out STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
end DataRegister;

architecture dataflow of DataRegister is

begin


	PROCESS(clock)
	begin
	
		IF rising_edge(clock) THEN
		
			all8 <= rcv_stream;
			first4 <= rcv_stream(7 DOWNTO 4);
			first3 <= rcv_stream(7 DOWNTO 5);
			first2 <= rcv_stream(7 DOWNTO 6);
			
		END IF;
	
	END PROCESS;
	
end dataflow;
