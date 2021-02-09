ABSTRACT:
Adders are combinational digital logic circuits mainly used for the addition of numbers. It is mainly usable in the computers and other type of processors for the calculation of addresses and even for the calculation of ALU related activities. Moreover, adders can also be used for the representation of numbers in BCD or excess-3 etc. 
In our project, we have used two different adders in order to analyze their behavior and performances based on the time taken for the addition. The adders we designed in our project are 16-bit Ripple carry Adder and 16-bit Carry lookahead Adder. N-bit Ripple Carry adders can be design by cascading N- numbers of Full adders. It is also a form of parallel adder. It is a logic circuit in which C-out of each full adder is C-in of the next adder, in this way it ripples the C-out as input to next adder. It also has propagation delays in its logical circuitry. Whereas, in order to reduce these propagation delays, carry lookahead adders are used but with more complex hardware. In our project, we have designed the adders in VHDL using different modeling techniques used in Verilog. The main purpose of our project is to analyze the ripple carry effect of adders by changing speed of FPGA.   
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
 Ripple Carry Adder:

Ripples carry adder is the cascaded form of full adder in parallel to add N-bit number. It is also necessary for an N-bit adder to have N-bit full adder for its operation. In ripple carry adder, the carryout of each adder works as the carry in for the succeeding adder and this is the reason it is said to be ripple adder as each carry ripples into the next stage. We cannot use half adder for this purpose because there is no carry-in in half adders.  As the rippling of carry into the next stage, there exist some propagation delay in its operation. Propagation delay is the time elapsed between the input and occurrence of output correspondingly. Here, we have implemented a VHDL 16-bit ripple carry adder to look upon its ripple effect in FPGA Verilog. 

Model Imag
![](Images/RCA1.png)




Flow Chart

![](Images/RCAF.png)

Carry Look-Ahead Adder:
In ripple carry adder, we have observed that the two inputs to be added are available for each adder but the adder block waits until its previous adder block ripples the carry to it. It is the propagation time for each adder to ripple carry into the next stage. For example, if each full adder stage has a propagation delay of 25n seconds, then last block of adder will reach its final correct value after 100n (25 × 4) seconds and this condition gets worsen as long as we try add more number of adders in the circuit. This was the reason behind the motivation of Carry look-ahead adder.

Model Image

 ![](Images/CLA0.png)
 
 Flow Chart
 
 ![](Images/CLAF.png)

Carry look-ahead adder reduces this propagation delay. It does so by transforming the ripple carry design is such a way that its carry logic gets reduced to two level logic. The circuitry for carry look-ahead adder is more complex as compare to ripple carry adder.  



Consider the full adder circuit shown above with corresponding truth table. We define two variables as ‘carry generate’  Gi and
‘carry propagate’  Pi then,

 ![](Images/CLA1.png)
 
The sum output and carry output can be expressed in terms of carry generate and carry propagate as, 

  ![](Images/CLA2.png)
		
The carry output Boolean function of each stage in a 4 stage carry look-ahead adder can be expressed as,

 ![](Images/CLA3.png)

The circuit of Carry look0ahead adder with internal logic is as follows, 

 ![](Images/CLA4.png)

We can make time complexity analysis of carry look-ahead adder in two parts as follows,
1.	Computation of carry for each bit.
2.	Addition of the input bits and the carry for each bit position.



Advantages –
The propagation delay is reduced.
It provides the fastest addition logic.
Disadvantages –
The Carry Look-ahead adder circuit gets complicated as the number of variables increase.
The circuit is costlier as it involves more number of hardware.


 

 
