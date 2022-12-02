function getContractInstance(abi, address) {
    let contract = new web3.eth.Contract(abi, address);
    return contract;
}

async function getNumber(instance, arr, number) {
    return await instance.methods.findUpperBound(arr, number).call();
}
