from scripts.helpful_scripts import get_account
from brownie import SimpleCollectible

# sample_token_uri = "https://ipfs.io/ipfs/QmSsYRx3LpDAb1GZQm7zZ1AuHZjfbPkD6J7s9r41xu1mf8?filename=pug.png"
sample_token_uri = "https://ipfs.io/ipfs/QmddwNTy8cTSdCeaw81s1iWmRDzizB6aSBATEz7mt3edhx?filename=pug.json"
OPENSEA_URL = "https://testnets.opensea.io/assets/{}/{}"


def main():
    account = get_account()
    simple_collectible = SimpleCollectible.deploy(
        {"from": account}, publish_source=True
    )

    tx = simple_collectible.createCollectible(sample_token_uri, {"from": account})
    tx.wait(1)

    print(
        f"You can view your nft at {OPENSEA_URL.format(simple_collectible.address, simple_collectible.tokenCounter() - 1)}"
    )
    print("Please wait up to 20 mins, and hit refresh metadata")


# continue video from --> 10:19:29  (test_simple_collectible.py)
