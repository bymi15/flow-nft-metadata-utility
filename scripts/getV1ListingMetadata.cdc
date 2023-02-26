import NFTMetadataUtility from 0xNFTMetadataUtility

pub fun main(owner: Address, nftID: UInt64, listingResourceID: UInt64): NFTMetadataUtility.StorefrontItem {
    return NFTMetadataUtility.getStorefrontV1ListingMetadata(owner: owner, nftID: nftID, listingResourceID: listingResourceID)
}