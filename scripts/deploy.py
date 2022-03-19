from brownie import accounts, Suid

def main():

    account = accounts.load("rinkeby1")
    suid = Suid.deploy(1000000, {"from": account}, publish_source=True)
    