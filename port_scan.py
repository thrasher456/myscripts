import socket
import sys

host=sys.argv[1]
#port=1
try:
	for port in range(1,65535):
		s=socket.socket()
		
		#print(f"Connecting to {host}:{port} \n")
		#print(port)
		result=s.connect_ex((host,port))
		if result==0:
			print(f"Port {port} is open")
		s.close()
except Exception as e :
	print(e)