BEGIN {
    x=1; y = 0;
    print "<TEI>"
     } 
     
    {
        if(NR==3){ print "<teiHeader>"$0"</teiHeader>" }

        if (NR == 11) {print "<text>"; print "<body>"; print "<div"x">"; print "<head>"$0"</head>"}
            else if (NR > 11) {

                y = y + $0;
                
                if( y > x ) {
                    print "</div"x">";
                    x = x + 1; 
                    print "<div"x">" 
                    }
                    else if (y==0) {
                        print "<head>"$0"</head>" 
                    }   
                    else {
                        print "<s>"$0"</s>"
                    } 

                y = 0 
                
            }
    }
    END {
        print "</div"x">";
        print "</body>";
        print "</text>";
        print "</TEI>"
    }
