import NFTMetadataUtility from 0xNFTMetadataUtility

pub fun main(owner: Address, nftID: UInt64): NFTMetadataUtility.CollectionItem {
    return NFTMetadataUtility.getTopShotMetadata(owner: owner, nftID: nftID)
}