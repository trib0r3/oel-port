f = open("./enum", "r")
prefix = f.readlines()
f.close()

f = open("./eng.lang")
suffix = f.readlines()
f.close()

for i in range(len(prefix)):
    prefix[i] = prefix[i].rstrip("\n")
    suffix[i] = suffix[i].rstrip("\n")

    spaces = 52 + 4 - len(prefix[i])
    fill = " " * spaces

    print "{}{}/* {} */".format(prefix[i], fill, suffix[i])
