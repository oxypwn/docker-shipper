from shipper import *

@command
def hello():
   print Shipper().containers(pretty=True)

run() 
