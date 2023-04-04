## Umbrel Nostr Community Appstore

This community appstore is for testing nostr and/or lightning related apps on Umbrel Nodes. 

This repository so far holds an adjusted version of getalbys Nostr-Wallet-Connect that allows you to zap diretly in Clients that support Wallet-Connect (like Amethyst) directly from your node. 

### How to install

To use this community app store, you can add this repository through the Umbrel user interface as shown in the following demo:


https://user-images.githubusercontent.com/10330103/197889452-e5cd7e96-3233-4a09-b475-94b754adc7a3.mp4


Add https://github.com/believethehype/umbrelapps 
to community Appstores and install Nostr-Wallet-Connect. Once you installed, open the app and scan the QR code with your Nostr Client (Amethyst is the first client that supports Wallet-Connect.) Done.


If you want to use a LNBits Wallet instead of Umbrels dedicated LND, you can change this in terminal for now:
Open Terminal

$ ssh umbrel@umbrel.local

Enter the password you use to login on the web interface

$ nano ~/umbrel/app-data/believethehype-wallet-connect/docker-compose.yml

 Change:   LN_BACKEND_TYPE: “LND” #LND,LNBITS
 
	   LN_BACKEND_TYPE: “LNBITS” #LND,LNBITS
	
 Change:   LNBITS_ADMIN_KEY: "enteradminkeyhere"
 
	   LNBITS_ADMIN_KEY: "an actual admin key of the wallet you want to use"

Exit -> Save Yes

$ ~/umbrel/scripts/app restart believethehype-wallet-connect


Projects in this repo are under development, use at own risk.

