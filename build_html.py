import sys

del sys.argv[0]
filenames = sys.argv

with open('resume.html', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)