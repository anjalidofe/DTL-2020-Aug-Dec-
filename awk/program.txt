Printing Column or Field
[jerry]$ awk '{print $3 "\t" $4}' marks.txt

[jerry]$ awk '/barn/ {++cnt} END {print "Count = ", cnt}' marks.txt

Printing Lines with More than 18 Characters
[jerry]$ awk 'length($0) > 25' marks.txt



AWK - Regular Expressions
Dot:
$ echo -e "cat\nbat\nfun\nfin\nfan" | awk '/f.n/'
fun
fin
fan


Start of line:
$ echo -e "This\nThat\nThere\nTheir\nthese" | awk '/^The/'




End of line:
$ echo -e "knife\nknow\nfun\nfin\nfan\nnine" | awk '/n$/'




Match character set:
$ echo -e "Call\nTall\nBall" | awk '/[CT]all/'

$ echo -e "Call\nTall\nBall" | awk '/[^CT]all/'





Occurrence:
$ echo -e "Call\nTall\nBall\nSmall\nShall" | awk '/Call|Ball/'

$ echo -e "ca\ncat\ncatt" | awk '/cat*/' ca cat catt catttttttt   cat+ : cat cattt catttttt

$ echo -e "111\n22\n123\n234\n456\n222"  | awk '/2+/' 


$ echo -e "Apple Juice\nApple Pie\nApple Tart\nApple Cake" | awk  '/Apple (Juice|Cake)/


for loop :
$ awk 'BEGIN { for (i = 1; i <= 5; ++i) print i }'

$ awk 'BEGIN {i = 1; do { print i; ++i } while (i < 6) }'


awk -F, '{ print $3, $0 }' user.csv | sort -nk2