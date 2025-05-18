module MedianFinder_5num(
    input  [3:0] 	num1  , 
	input  [3:0] 	num2  , 
	input  [3:0] 	num3  , 
	input  [3:0] 	num4  , 
	input  [3:0] 	num5  ,  
    output [3:0] 	median  
);

    wire [3:0] min1, max1;
    wire [3:0] min2, max2;
    wire [3:0] min3, max3;

    Comparator2 cmp1 (num1, num2, min1, max1);
    Comparator2 cmp2 (num3, num4, min2, max2);
    Comparator2 cmp3 (min1, min2, , max3);
    Comparator2 cmp4 (max1, max2, min3, );
    MedianFinder_3num Med3(min3, max3, num5, median);


endmodule
