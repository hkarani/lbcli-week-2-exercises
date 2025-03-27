# Created a SegWit address.
# Add funds to the address.
# Return only the Address
# Step 1: Create a new SegWit address (Bech32)
NEW_ADDRESS=$(bitcoin-cli -regtest getnewaddress "" bech32)

MINING_ADDRESS=$(bitcoin-cli -regtest getnewaddress)

bitcoin-cli -regtest generatetoaddress 101 "$MINING_ADDRESS"

bitcoin-cli -regtest generatetoaddress 10 "$MINING_ADDRESS"
echo "$NEW_ADDRESS"