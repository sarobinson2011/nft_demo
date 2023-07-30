from scripts.helpful_scripts import get_account
from brownie import SimpleCollectible

sample_token_uri = "https://ipfs.io/ipfs/QmddwNTy8cTSdCeaw81s1iWmRDzizB6aSBATEz7mt3edhx?filename=pug.json"
labrador_uri = "https://ipfs.io/ipfs/QmNbLRXHLPwiP1A9syQxwhSMb1qocLjF3zNJVGL42t4DnS?filename=labrador.json"
daschund_uri = "https://ipfs.io/ipfs/QmSz6eTfq9k9GWtvkKywFXAz6v3KT1wxKfEKDoqA3swFZT?filename=daschund.json"
jackrussell_uri = "https://ipfs.io/ipfs/QmVKdeYom7cF66zB8QHszeytgtzZRomrYmpuq11pR1M56v?filename=jackrussell.json"
pug2_uri = "https://ipfs.io/ipfs/QmPRqc4NECw6HAybpxiPDBBpVDtNYvFS5vzdVErWHqTm3P?filename=pug2.json"

# OPENSEA_URL = "https://testnets.opensea.io/assets/{}/{}"


def main():
    account = get_account()
    # simple_collectible = SimpleCollectible.deploy(
    #     {"from": account}, publish_source=False
    # )

    # tx = simple_collectible.createCollectible(jackrussell_uri, {"from": account})
    simple_collectible = SimpleCollectible.at(
        "0xfb2E2F18A9E219F0898b105357EDBCA20bc774Bb"
    )

    tx = simple_collectible.createCollectible(jackrussell_uri, {"from": account})
    tx.wait(1)


# continue video from --> 10:19:29  (test_simple_collectible.py)
