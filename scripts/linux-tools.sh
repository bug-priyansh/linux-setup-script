TOOLS=("nmap" "recon-ng" "wireshark" "shodan" "theharvester" "dnsenum" "maltego"
       "nessus" "openvas" "nikto" "zaproxy" "exploitdb" "sqlmap" "burpsuite" "hydra" "beef"
       "john" "hashcat" "aircrack-ng" "reaver" "wifite" "owtf" "skipfish" "w3af"
       "setoolkit" "browser-exploitation-framework" "king-phisher" "powersploit" "empire" "pupy" "covenant"
       "autopsy" "volatility" "sleuthkit" "ghiro" "wireshark" "aircrack-ng" "kismet" "wifite"
       "ida-pro" "ghidra" "radare2" "ollydbg" "steghide" "outguess" "openstego"
       "wireshark" "tcpdump" "tshark" "burpsuite" "zaproxy" "charles-proxy"
       "keepassx" "bitwarden" "openssl" "gnupg")

# Update and upgrade the package manager
echo "Updating package manager..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Install each tool in the list
for tool in "${TOOLS[@]}"; do
    if ! command -v "$tool" &>/dev/null; then
        echo "Installing $tool..."
        sudo apt-get install -y "$tool"
        echo "$tool installed successfully."
        clear
    else
        echo "$tool is already installed."
        clear
    fi
done

echo "All tools have been installed."
clear
