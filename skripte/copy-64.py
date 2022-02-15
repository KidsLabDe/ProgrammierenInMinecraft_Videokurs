import os
import time

MSCS_BASE = 'mscs send StreamingKurs-0-Template'

TP_WEITER = 'tp ~23 ~ ~'
CLONE = 'clone 13 15 184 32 19 155 ~-1 ~-3 ~-30'


mscs_clone = f'{MSCS_BASE} {CLONE}'
mscs_tp = f'{MSCS_BASE} {TP_WEITER}'
for _ in range(72):
    os.system(mscs_clone)
    time.sleep(1)
    os.system(mscs_tp)
    time.sleep(1)