-include .env

build:; forge build

all: clean remove install update build

# Clean the repo
clean  :; forge clean

# Update Dependencies
update:; forge update

build:; forge build

basebuild :; forge build --base

test :; forge test

basetest :; foundryup-base && forge test --base && foundryup

snapshot :; forge snapshot

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

deploy-base:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(BASE_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

# For deploying Interactions.s.sol:FundFundMe as well as for Interactions.s.sol:WithdrawFundMe we have to include a sender's address `--sender <ADDRESS>` 
fund:
	forge script script/Interactions.s.sol:FundFundMe --sender $(SENDER_ADDRESS) --rpc-url $(SEPOLIA_RPC_URL)  --private-key $(PRIVATE_KEY)  --broadcast

withdraw:
	forge script script/Interactions.s.sol:WithdrawFundMe --sender $(SENDER_ADDRESS) --rpc-url $(SEPOLIA_RPC_URL)  --private-key $(PRIVATE_KEY)  --broadcast