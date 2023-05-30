from scripts.helpful_scripts import get_account, SimpleCollectible


def main():
    account = get_account()
    simple_collectible = SimpleCollectible.deploy({"from": account})


# continue video from --> 10:15:16
