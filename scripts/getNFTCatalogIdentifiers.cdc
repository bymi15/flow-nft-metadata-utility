import MetadataViews from 0xMetadataViews
import NFTCatalog from 0xNFTCatalog
import NFTRetrieval from 0xNFTRetrieval

pub fun main() : [String] {
    let catalog = NFTCatalog.getCatalog()
    return catalog.keys
}