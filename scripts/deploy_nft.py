from brownie import accounts, MyNFT

def main():
    acoount = accounts.load("rinkeby1")
    myNft = MyNFT.deploy({"from": acoount},  publish_source=True)
   