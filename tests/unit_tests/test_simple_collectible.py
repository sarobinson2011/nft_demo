# from re import I
from scripts.helpful_scripts import get_account, LOCAL_BLOCKCHAIN_ENVIRONMENTS
from brownie import network
import pytest
from scripts.deploy_and_create import deploy_and_create


def test_can_mint_simple_collectible():
    if network.show_active() not in LOCAL_BLOCKCHAIN_ENVIRONMENTS:
        pytest.skip()

    simple_collectible = deploy_and_create()
    assert simple_collectible.ownerOf(0) == get_account()
