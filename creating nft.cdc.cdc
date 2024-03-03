import AiCrypto from 0x06
import NonFungibleToken from 0x05

transaction() {

  prepare(acct: AuthAccount) {
   
    acct.save(<- AiCrypto.createEmptyCollection(), to: /storage/Collection)
    acct.link<&AiCrypto.Collection{NonFungibleToken.CollectionPublic, AiCrypto.MyCollectionPublic}>(/public/Collection, target: /storage/Collection)
    
    
  }
  execute {
    log(" Collection has done!!")
  }
}