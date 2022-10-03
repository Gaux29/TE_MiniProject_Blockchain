// Deploying smart contract "Certificate_contract.sol" on hardhat........

const { ethers, run, network } = require('hardhat')

async function main() {
  const Factory = await ethers.getContractFactory('Factory')
  const factory = await Factory.deploy()

  await factory.deployed()
  console.log(`factory deployed to : ${factory.address}`)

  // console.log('deploying contract.....')
  // const certificate_contract = await certificate_contract_factory.deploy()
  // await certificate_contract.deployed()
  // console.log(`deployed contract to : ${certificate_contract.address}`)

  // createNewCertificateContract(factory)
  // console.log('abcd')

  // const latestFactory = await ethers.getContractAt('Factory', factory.address)
  await factory.createCertificateContract(
    'firstfile.txt',
    'abc123',
    'text',
    200,
    100100,
    'tanay',
    1234567890,
    'tanay@tanay.com',
  )
  await factory.certificate_array(0)
  console.log('\nCertificat Info...........')
  console.log(await factory.getCertificate(0))
}

// async function createNewCertificateContract(factory) {
//   const Factory = await ethers.getContractAt('Factory', factory.address)
//   console.log(
//     await Factory.createCertificateContract(
//       'firstfile.txt',
//       'abc123',
//       'text',
//       200,
//       100100,
//       'tanay',
//       1234567890,
//       'tanay@tanay.com',
//     ),
//   )
//   console.log(await Factory.certificate_array(0))
// }

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error)
    process.exit(1)
  })
