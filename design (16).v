module half_sub (

    input A,
    input B,
    output D,
    output Bor
);
 xor (D, A, B);
 and (Bor, ~A, B);
endmodule