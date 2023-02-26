import MetadataViews from 0xMetadataViews
import NFTCatalog from 0xNFTCatalog
import NFTRetrieval from 0xNFTRetrieval

pub struct NFTCollection {
  pub let contractName: String
  pub let contractAddress: String
  pub let storagePath: StoragePath
  pub let publicPath: PublicPath
  pub let privatePath: PrivatePath
  pub let publicLinkedType: Type
  pub let privateLinkedType: Type
  pub let name: String
  pub let description: String
  pub let collectionSquareImage: String
  pub let collectionBannerImage: String

  init(
      contractName: String,
      contractAddress: String,
      storagePath: StoragePath,
      publicPath: PublicPath,
      privatePath: PrivatePath,
      publicLinkedType: Type,
      privateLinkedType: Type,
      name: String,
      description: String,
      collectionSquareImage: String,
      collectionBannerImage: String
  ) {
      self.contractName = contractName
      self.contractAddress = contractAddress
      self.storagePath = storagePath
      self.publicPath = publicPath
      self.privatePath = privatePath
      self.publicLinkedType = publicLinkedType
      self.privateLinkedType = privateLinkedType
      self.name = name
      self.description = description
      self.collectionSquareImage = collectionSquareImage
      self.collectionBannerImage = collectionBannerImage
  }
}

pub fun main(collectionIdentifiers : [String]) : [NFTCollection] {
    var nftCollections: [NFTCollection] = []
    for collectionIdentifier in collectionIdentifiers {
        let value = NFTCatalog.getCatalogEntry(collectionIdentifier: collectionIdentifier)
        if value == nil {
            continue
        }

        let collectionDataView = value!.collectionData
        let collectionDisplayView = value!.collectionDisplay
        
        nftCollections.append(
            NFTCollection(
                contractName: value!.contractName,
                contractAddress: value!.contractAddress.toString(),
                storagePath: collectionDataView!.storagePath,
                publicPath: collectionDataView!.publicPath,
                privatePath: collectionDataView!.privatePath,
                publicLinkedType: collectionDataView!.publicLinkedType,
                privateLinkedType: collectionDataView!.privateLinkedType,
                name: collectionDisplayView!.name,
                description: collectionDisplayView!.description,
                collectionSquareImage: collectionDisplayView!.squareImage.file.uri(),
                collectionBannerImage: collectionDisplayView!.bannerImage.file.uri()
            )
        )
    }
    return nftCollections
}