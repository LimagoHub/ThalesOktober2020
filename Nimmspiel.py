def play():
    global spielende
    init()
    while not spielende:
        spielerzug()
        computerzug()

def init():
    global steine 
    global spielende
    steine = 23
    spielende = False

def spielerzug():
    global steine
    while True:
        zug = int(input('Es gibt {} Steine. Bitte nehmen Sie 1,2 oder 3\n'.format(steine)))
        if zug >=1 and zug <= 3: 
            break
        print("Ungueltiger Zug")
    steine -= zug

def computerzug():
    global steine 
    global spielende
    zuege = (3,1,1,2)
    if(steine < 1):
        print ("Du Looser")
        spielende = True
        return
    if(steine == 1):
        print ("Du hast nur Glück gehabt")
        spielende = True
        return

    zug = zuege[steine % 4]
    print ("Computer nimmt {} Steine".format(zug))
    steine -= zug

play()