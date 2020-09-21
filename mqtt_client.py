import paho.mqtt.client as mqtt


def on_connect(client, userdata, flags, rc):
	print("conncted")
	client.subscribe("#")

def on_message(client, userdata, msg):
	print("message received: " + msg.topic + " " + str(msg.payload))


client = mqtt.Client("P1")
client.on_connect = on_connect
client.on_message = on_message

client.connect('192.168.22.64', 1883)
client.loop_forever()

