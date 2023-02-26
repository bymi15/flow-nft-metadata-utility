import NFTMetadataUtility from 0xNFTMetadataUtility

pub fun main(owner: Address, nftID: UInt64, listingResourceID: UInt64): NFTMetadataUtility.StorefrontItem {
    return NFTMetadataUtility.getStorefrontV2FlowtyListingMetadata(owner: owner, nftID: nftID, listingResourceID: listingResourceID)
}