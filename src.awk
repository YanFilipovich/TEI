BEGIN {
    x=1; y = 0;
    print "<text>";
    print "<body>";
    print "<div"x">" 
    } 
    {
        y = y + $0;
         
        if( y > x ) {
            print "</div"x">";
            x = x + 1; 
            print "<div"x">" 
            }; 
        y = 0; 
        print "<s>"$0"</s>"
    }
    END {
        print "</div"x">";
        print "</body>";
        print "</text>"
    }
