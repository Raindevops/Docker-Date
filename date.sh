#!/bin/sh

intro="<h1>Bonjour très chèr(e) visiteur</h1>"
outro="<h3>Merci de votre visite, et à bientôt.</h3>"

while true
do
echo $(date +"%D %T")
echo "<head><meta charset='utf8'/><title>Giving date and time App</title><link rel='stylesheet' href='./style.css'></link></head>" > index.html
echo "<body><main>" >> index.html

echo $intro >> index.html

content="<p>Nous sommes le <b>"$(date +"%d %m %Y")"</b></p> <p>Il est actuellement <b>"$(date +"%H")" heures "$(date +"%M")" minutes et "$(date +"%S")" secondes.</b> </p>" 

echo $content >> index.html

echo $outro >> index.html

echo "</main><footer><span>Cours Docker - Sup de Vinci - MSI-A-22-DO</span> <br/> <span>Rainald Durand</span</footer></body>" >> index.html
sleep 1
done