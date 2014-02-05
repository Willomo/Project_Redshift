txtfile = file_text_open_read("textfile.txt"); 
j=0;
do { 
read = file_text_read_real(txtfile); 
for(i=0;i<(string_length(read)/2);i++){
    shipArray[i,j]=string_char_at(read,(2*i))
}
j++
file_text_readln(txtfile);
} until(file_text_eof(txtfile)); 
file_text_close(txtfile);
