 #!/bin/bash
        kill -TERM $(xprop -root _BLACKBOX_PID | awk '{print $3}')
 fi
