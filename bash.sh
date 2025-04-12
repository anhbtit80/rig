#download essential files
wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz

#unzip
tar -xf xmrig-6.22.2-linux-static-x64.tar.gz

#cd
cd xmrig-6.22.2

#run the code
./xmrig -o pool.hashvault.pro:443 -u 458wDBqXmANaEQRqEeBEU474xigR2u6gkchgPMxeQMtFJTjpdhfFKTA2GZV3VCSTW2ieU8hTSnnwQ2rz1arMjXm231CL8CL -k --coin monero -a rx/0 --donate-level=0 --randomx-1gb-pages --tls
