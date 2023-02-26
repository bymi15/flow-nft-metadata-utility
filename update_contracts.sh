# TESTNET:
flow accounts update-contract ./contracts/testnet/FlowtyStorefront.cdc --network=testnet --signer=testnet-account
flow accounts update-contract ./contracts/testnet/NFTMetadataUtility.cdc --network=testnet --signer=testnet-account

# MAINNET:
# flow accounts update-contract ./contracts/mainnet/FlowtyStorefront.cdc --network=mainnet --signer=mainnet-account
# flow accounts update-contract ./contracts/mainnet/NFTMetadataUtility.cdc --network=mainnet --signer=mainnet-account