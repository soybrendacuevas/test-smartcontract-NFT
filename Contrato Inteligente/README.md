# Compilar y Desplegar el Contrato
### Compilar el Contrato
-  En Remix, ve a la pestaña "Solidity Compiler" (ícono del compás).
- Selecciona la versión del compilador 0.8.0 y haz clic en "Compile NFTContract.sol".
### Desplegar el Contrato
- Ve a la pestaña "Deploy & Run Transactions" (ícono de la flecha).
- Configura el entorno a "Injected Web3" para usar MetaMask.
- Asegúrate de estar en la red de pruebas Rinkeby o Ropsten.
- Haz clic en "Deploy".
##Interactuar con el Contrato
### Crear un NFT
- En la sección "Deployed Contracts", encuentra createNFT.
- Introduce los parámetros necesarios: tokenURI (la URL del archivo digital) y royalty (el porcentaje de regalía).
- Haz clic en "Transact" y confirma la transacción en MetaMask.
### Transferir el NFT
- Encuentra transferFrom en la sección "Deployed Contracts".
- Introduce los parámetros: from (tu dirección), to (dirección del comprador), y tokenId (el ID del token).
- Haz clic en "Transact" y confirma la transacción en MetaMask.
