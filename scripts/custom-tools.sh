#!/bin/bash  
mkdir tools
cd tools

    #install aquatone
    echo "Installing Aquatone"
    go get github.com/michenriksen/aquatone
    echo "done"

    echo "installing JSParser"
    git clone https://github.com/nahamsec/JSParser.git
    cd JSParser*
    sudo python setup.py install
    cd ..
    echo "done"

    echo "installing Sublist3r"
    git clone https://github.com/aboul3la/Sublist3r.git
    cd Sublist3r*
    pip install -r requirements.txt
    cd ..
    echo "done"

    echo "installing teh_s3_bucketeers"
    git clone https://github.com/tomdev/teh_s3_bucketeers.git
    echo "done"

    echo "installing wpscan"
    git clone https://github.com/wpscanteam/wpscan.git
    cd wpscan*
    sudo gem install bundler && bundle install --without test
    cd ..
    echo "done"

    echo "installing dirsearch"
    git clone https://github.com/maurosoria/dirsearch.git
    echo "done"

    echo "installing lazys3"
    git clone https://github.com/nahamsec/lazys3.git
    echo "done"

    echo "installing virtual host discovery"
    git clone https://github.com/jobertabma/virtual-host-discovery.git
    echo "done"

    echo "installing sqlmap"
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
    echo "done"

    echo "installing knock.py"
    git clone https://github.com/guelfoweb/knock.git
    echo "done"

    echo "installing lazyrecon"
    git clone https://github.com/nahamsec/lazyrecon.git
    echo "done"

    echo "installing massdns"
    git clone https://github.com/blechschmidt/massdns.git
    cd massdns
    make
    cd ..
    echo "done"

    echo "installing asnlookup"
    git clone https://github.com/yassineaboukir/asnlookup.git
    cd asnlookup
    pip install -r requirements.txt
    cd ..
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

    echo "downloading Seclists"
    git clone https://github.com/danielmiessler/SecLists.git
    cd SecLists/Discovery/DNS/
    ##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
    cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
    cd ..
    echo "done"

cd ..

mv tools ~/