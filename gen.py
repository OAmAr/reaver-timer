#!usr/env/bin/python
#noDelay

x = [1,2,3,4,5]
y = [300,600,1800,3600,7200, 14400, 28800, 57600, 82800]
#t = [5 minutes, 10 min, 30 min, 1hr,2hr,4hr,8,hr,16hr,24,hr]
with open('totest.txt', 'w') as f:
	for number in reversed(x):
		for time in y:
			f.write('%i,%i\n' % (number, time))
