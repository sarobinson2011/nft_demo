from scripts.helpful_scripts import get_account
from brownie import SimpleCollectible

# sample_token_uri = "https://ipfs.io/ipfs/QmddwNTy8cTSdCeaw81s1iWmRDzizB6aSBATEz7mt3edhx?filename=pug.json"
# labrador_uri = "https://ipfs.io/ipfs/QmNbLRXHLPwiP1A9syQxwhSMb1qocLjF3zNJVGL42t4DnS?filename=labrador.json"
# daschund_uri = "https://ipfs.io/ipfs/QmSz6eTfq9k9GWtvkKywFXAz6v3KT1wxKfEKDoqA3swFZT?filename=daschund.json"
pug2_uri = "https://ipfs.io/ipfs/QmfHvKAoTY7xBUqD9z14kfS425fbVUXtUNxfm6c9N5Vrdd?filename=pug2.json"

OPENSEA_URL = "https://testnets.opensea.io/assets/{}/{}"


def main():
    account = get_account()
    simple_collectible = SimpleCollectible.deploy(
        {"from": account}, publish_source=True
    )

    for i in range(1):
        tx = simple_collectible.createCollectible(pug2_uri, {"from": account})
        tx.wait(1)

    # print(
    #     f"You can view your nft at {OPENSEA_URL.format(simple_collectible.address, simple_collectible.tokenCounter() - 1)}"
    # )
    # print("Please wait up to 20 mins, and hit refresh metadata")


# continue video from --> 10:19:29  (test_simple_collectible.py)
