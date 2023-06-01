from scripts.helpful_scripts import get_account
from brownie import TestVerify

""" script purely tests publish/verify functionality 
    of publish_source=True
"""


def main():
    account = get_account()
    # simple_collectible = TestVerify.deploy({"from": account})
    simple_collectible = TestVerify.deploy({"from": account}, publish_source=True)
