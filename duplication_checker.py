import paho.mqtt.client as mqtt


def on_connect(client, userdata, flags, rc):
	print("conncted")
	client.subscribe("#")

def on_message(client, userdata, msg):
	print("- messaggio ricevuto: " + msg.topic + " " + str(msg.payload))
	msg_list.append(str(msg.payload))
	print(len(msg_list))
	if(len(msg_list) > 2):
	        print("- ultimo elemento: " + msg_list[-1])
	        print("- penultimo elemento: " + msg_list[-2])
	        if msg_list[-1] == msg_list[-2]:
	                with open("duplicati.txt", "a") as myfile:
	                        myfile.write("\n\n----------------------------------------\n")
	                        myfile.write(msg_list[-1])
	                        myfile.write("\n------\n")
	                        myfile.write(msg_list[-2])
	

msg_list = []
client = mqtt.Client("P1")
client.on_connect = on_connect
client.on_message = on_message
print(" ")
print(len(msg_list))
print(" ")
client.connect('192.168.22.164', 1883)
client.loop_forever()
