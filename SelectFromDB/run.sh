!#/bin/bash

clear


echo "                                                                                   ";
echo "       _                 _                            _          _____ _____ _____ ";
echo " _____|_|___ ___ ___ ___|_|___ ___ ___    ___ ___ ___| |_ ___   |     | __  |  |  |";
echo "|     | | . |  _| .'|- _| | . |   | -_|  |  _| -_|  _|  _|_ -|  | | | | __ -|     |";
echo "|_|_|_|_|_  |_| |__,|___|_|___|_|_|___|  |___|___|_| |_| |___|  |_|_|_|_____|__|__|";
echo "        |___|                                                                      ";
echo ""
echo ""
echo ""
echo ""


echo "Creazione di 6 script sql nella cartella ScriptSql"
echo "script1.sql: 900000 - 901500"
echo "script2.sql: 901501 - 902999"
echo "script3.sql: 903000 - 904999"
echo "script4.sql: 905000 - 906999"
echo "script5.sql: 907000 - 908999"
echo "script6.sql: 909000 - 911999"
echo "script7.sql: 912000 - 915000"




##1: 900000 - 901500
python3.7 select_from_db.py "SELECT serial, uuid, rootca, clientcert, clientkey FROM microboxhome.device_uuid WHERE serial BETWEEN '900000' AND '901500';" > InsertFiles/primo.sql

#2: 901501 - 902999
python3.7 select_from_db.py "SELECT serial, uuid, rootca, clientcert, clientkey FROM microboxhome.device_uuid WHERE serial BETWEEN '901501' AND '902999';" > InsertFiles/secondo.sql

#3: 903000 - 904999
python3.7 select_from_db.py "SELECT serial, uuid, rootca, clientcert, clientkey FROM microboxhome.device_uuid WHERE serial BETWEEN '903000' AND '904999';" > InsertFiles/terzo.sql

#4: 905000 - 906999
python3.7 select_from_db.py "SELECT serial, uuid, rootca, clientcert, clientkey FROM microboxhome.device_uuid WHERE serial BETWEEN '905000' AND '906999';" > InsertFiles/quarto.sql

#5: 907000 - 908999
python3.7 select_from_db.py "SELECT serial, uuid, rootca, clientcert, clientkey FROM microboxhome.device_uuid WHERE serial BETWEEN '907000' AND '908999';" > InsertFiles/quinto.sql

#6: 909000 - 911999
python3.7 select_from_db.py "SELECT serial, uuid, rootca, clientcert, clientkey FROM microboxhome.device_uuid WHERE serial BETWEEN '909000' AND '911999';" > InsertFiles/sesto.sql

#7: 912000 - 915000
python3.7 select_from_db.py "SELECT serial, uuid, rootca, clientcert, clientkey FROM microboxhome.device_uuid WHERE serial BETWEEN '912000' AND '915000';" > InsertFiles/settimo.sql




