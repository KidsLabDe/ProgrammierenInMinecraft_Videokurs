import os
import time

PLAYER = 'MatzE_'
WORLD = 'StreamingKurs-0-Template'
DELAY = 0.2

CLONE = f'execute {PLAYER} ~ ~ ~ clone 13 15 184 32 19 155 ~-1 ~-3 ~-30'
TP_WEITER = f'tp {PLAYER} ~23 ~ ~'

mscs_base = f'mscs send {WORLD}'
mscs_clone = f'{mscs_base} "{CLONE}"'
mscs_tp = f'{mscs_base} "{TP_WEITER}"'

def main():
    for _ in range(72):
        os.system(mscs_clone)
        time.sleep(DELAY)
        os.system(mscs_tp)
        time.sleep(DELAY)

if __name__ == '__main__':
    main()
