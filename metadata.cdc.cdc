import AiCrypto from 0x06
import NonFungibleToken from 0x05

pub fun main(account: Address, id: UInt64): &AiCrypto.NFT {
  let publicReference = getAccount(account).getCapability(/public/Collection)
                                     .borrow<&AiCrypto.Collection{AiCrypto.MyCollectionPublic}>()
                                   ?? panic("This account does not have a Collection")
  let ID=id


    return publicReference.borrowAuthNFT(id: ID)
}