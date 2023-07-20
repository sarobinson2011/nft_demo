# nft_demo


### ToDo:

1. Can't view NFT image on goerli or looksrare - sort this out
  --> FIXED

2. Get attributes working (score out of 100 not working)          #ToDo

3. Write a new smart contract which randomly mints 5 unique NFTs  #ToDo


### Progress:

1. SimpleCollectible_OLD.sol working ^0.6.6 (openzeppelin @ 3.4.0)
2. IPFS installed
3. Images uploaded to IPFS
4. NFT deployed to goerli contract + successfully verified with publish_source=True
5. FIXED (1)  -->  URI was a link to the image, as opposed to a JSON file  - created pug.json, which links to the image .png file (now viewable)

