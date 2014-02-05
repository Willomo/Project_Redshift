///getAspectRatio(width,height);
num1 = argument0;
num2 = argument1;
i=1;
notbreak = true;
while (i<num2) and notbreak {
    if (num2/i - num2 div i = 0) {
        temp = num1/num2*i;
        if (temp div 1 = temp) {
            answer = string(temp) + ":" + string(i);
            notbreak = false;
        } else {
            i++;
        }
    } else {
        i++;
    }
}
return answer;
