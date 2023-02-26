# TESTNET:
flow accounts add-contract ./contracts/testnet/FlowtyStorefront.cdc --network=testnet --signer=testnet-account
flow accounts add-contract ./contracts/testnet/NFTMetadataUtility.cdc --network=testnet --signer=testnet-account

# MAINNET:
# flow accounts add-contract ./contracts/mainnet/FlowtyStorefront.cdc --network=mainnet --signer=mainnet-account
# flow accounts add-contract ./contracts/mainnet/NFTMetadataUtility.cdc --network=mainnet --signer=mainnet-account