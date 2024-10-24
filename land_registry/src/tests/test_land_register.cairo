// *************************************************************************
//                              Setup
// *************************************************************************
use starknet::{ContractAddress, contract_address_const};
use land_registry::interface::{
    ILandRegistryDispatcher, ILandRegistryDispatcherTrait, Land, LandUse
};
use land_registry::land_register::LandRegistryContract;
use land_registry::land_nft::{ILandNFTDispatcher, ILandNFTDispatcherTrait};

// function contract deployment
fn deploy_land_registry() -> ILandRegistryDispatcher {
    let contract_address: ContractAddress = contract_address_const::<0x123>();
    let _nft_address: ContractAddress = contract_address_const::<0x456>();
    ILandRegistryDispatcher { contract_address }
}

// Function NFT contract deployment
fn deploy_land_nft(land_registry: ContractAddress) -> ILandNFTDispatcher {
    let nft_address: ContractAddress = contract_address_const::<0x456>();
    ILandNFTDispatcher { contract_address: nft_address }
}
