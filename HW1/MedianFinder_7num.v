module MedianFinder_7num(
    input  	[3:0]  	num1  , 
	input  	[3:0]  	num2  , 
	input  	[3:0]  	num3  , 
	input  	[3:0]  	num4  , 
	input  	[3:0]  	num5  , 
	input  	[3:0]  	num6  , 
	input  	[3:0]  	num7  ,  
    output 	[3:0] 	median  
);
    wire [3:0] min1, min2, min3, max1, max2, max3, mmin1, mmax1, tmp1, tmp2, tmp3, tmp4; 
    Comparator2 cmp1(num1, num2, min1, max1);
    Comparator2 cmp2(num3, num4, min2, max2);
    Comparator2 cmp3(num5, num6, min3, max3);

    Comparator2 cmp4(min1, min2, mmin1, tmp1);
    Comparator2 cmp5(mmin1, min3, , tmp2);

    Comparator2 cmp6(max1, max2, tmp3, mmax1);
    Comparator2 cmp7(mmax1, max3, tmp4, );

    MedianFinder_5num Med5(tmp1, tmp2, tmp3, tmp4, num7, median);
endmodule
