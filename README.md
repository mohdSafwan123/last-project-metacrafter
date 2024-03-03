# Flow Non-Fungible Token Standard

This repository contains the Flow Non-Fungible Token (NFT) standard, providing a clear and modular contract interface for NFT functionality. The primary NFT contract interface is defined in the NonFungibleToken module, serving as a foundation for other NFT contracts to import and implement.
Key Features
1. Total Supply Tracking

The totalSupply variable keeps track of the total number of NFTs within the system.
2. Events

    ContractInitialized: Signals the initialization of the NFT contract.
    Withdraw: Triggered upon the withdrawal of an NFT, providing details such as the ID and sender's address.
    Deposit: Indicates the deposit of an NFT, including the ID and recipient's address.

3. NFT Resource

The INFT resource interface defines the unique ID (id) that each NFT possesses.
4. Provider and Receiver Interfaces

    Provider: Specifies a function (withdraw) for withdrawing NFTs based on their IDs.
    Receiver: Dictates a function (deposit) to deposit NFTs into a collection.

5. CollectionPublic Interface

Defines functions for managing NFT collections:

    deposit: Adds an NFT to the collection.
    getIDs: Retrieves an array of IDs present in the collection.
    borrowNFT: Provides a borrowed reference to an NFT within the collection.

6. Collection Resource

The Collection resource interface extends Provider, Receiver, and CollectionPublic, offering a comprehensive NFT management system. It includes:

    ownedNFTs: A dictionary holding NFTs in the collection.
    withdraw: Removes an NFT from the collection and transfers it to the caller.
    deposit: Adds an NFT to the collection.
    getIDs: Retrieves an array of IDs in the collection.
    borrowNFT: Provides a borrowed reference to an NFT in the collection.

7. createEmptyCollection Function

Generates an empty collection, ensuring that the created collection has no NFTs initially.
