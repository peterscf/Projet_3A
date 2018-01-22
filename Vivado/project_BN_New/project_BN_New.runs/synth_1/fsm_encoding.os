
 add_fsm_encoding \
       {GATEWAY.current_state} \
       { }  \
       {{000 000} {001 010} {010 100} {011 001} {100 011} }

 add_fsm_encoding \
       {Memory.current_state} \
       { }  \
       {{000 000} {001 010} {010 100} {011 001} {100 011} }

 add_fsm_encoding \
       {prog.current_state} \
       { }  \
       {{000 000001} {001 000010} {010 000100} {011 100000} {100 010000} {101 001000} }
