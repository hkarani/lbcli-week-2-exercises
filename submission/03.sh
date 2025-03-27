# Created a SegWit address.
# Add funds to the address.
# Return only the Address
# Step 1: Create a new SegWit address (Bech32)
NEW_ADDRESS=$(bitcoin-cli -regtest getnewaddress "" bech32)

bitcoin-cli -regtest generatetoaddress 101 "$NEW_ADDRESS"

bitcoin-cli -regtest generatetoaddress 10 "$(bitcoin-cli -regtest getnewaddress)"

echo "$NEW_ADDRESS"