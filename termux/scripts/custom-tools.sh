#!/bin/bash  
mkdir ~/tools
cd ~/tools/

#install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"

#install chromium
echo "Installing Chromium"
sudo snap install chromium
echo "done"

echo "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd ~/tools/
echo "done"

echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/tools/
echo "done"


echo "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo "done"


echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/tools/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"


echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/
echo "done"


echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "done"

echo "installing knock.py"
git clone https://github.com/guelfoweb/knock.git
cd ~/tools/
echo "done"

echo "installing lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git
cd ~/tools/
echo "done"

echo "installing nmap"
sudo apt-get install -y nmap
echo "done"

echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"

echo "installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/tools/asnlookup
pip install -r requirements.txt
cd ~/tools/
echo "done"

echo "installing httprobe"
go get -u github.com/tomnomnom/httprobe 
echo "done"

echo "installing unfurl"
go get -u github.com/tomnomnom/unfurl 
echo "done"

echo "installing waybackurls"
go get github.com/tomnomnom/waybackurls
echo "done"

echo "installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "done"

echo "installing cypertext"
git clone https://github.com/k-priyansh/Cypertext.git
cd Cypertext
python -m pip install -r requirements.txt
cd ~/tools/
echo "done"

echo "installing gsec"
git clone https://github.com/gotr00t0day/Gsec.git
cd Gsec
pip3 install -r requirements.txt
cd ~/tools/
echo "done"

echo "installing geowifi"
git clone https://github.com/GONZOsint/geowifi.git
cd geowifi
python -m pip install -r requirements.txt
cd ~/tools/
echo "done"

echo "downloading Seclists"
cd ~/tools/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/tools/
echo "done"



mkdir ~/Desktop/tools
mv * ~/Desktop/tools