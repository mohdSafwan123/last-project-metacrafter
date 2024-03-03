import AiCrypto from 0x06   
import NonFungibleToken from 0x05

transaction(recipient: Address) {
 // the NFTMinter will sign this transaction
  prepare(acct: AuthAccount) {
   let nftMinter =  acct.borrow<&AiCrypto.Minter>(from: /storage/Minter)!

   let publicReference = getAccount(recipient).getCapability(/public/Collection)
                        .borrow<&AiCrypto.Collection{NonFungibleToken.CollectionPublic}>()
                         ?? panic("This account does not have a Collection")
  
    publicReference.deposit(token: <- nftMinter.createNFT())
  }
  execute {
    log(" Congratulation you've Stored newly minted NFT into Collection")
  }
}
 
 


