
 add_fsm_encoding \
       {GATEWAY.current_state} \
       { }  \
       {{000 00001} {001 00100} {010 10000} {011 00010} {100 01000} }

 add_fsm_encoding \
       {Memory.current_state} \
       { }  \
       {{000 00001} {001 00100} {010 10000} {011 00010} {100 01000} }

 add_fsm_encoding \
       {prog.current_state} \
       { }  \
       {{000 000001} {001 000010} {010 000100} {011 100000} {100 010000} {101 001000} }
