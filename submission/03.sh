# Created a SegWit address.
# Add funds to the address.
# Return only the Address
NEW_ADDRESS=$(bitcoin-cli -regtest getnewaddress "" bech32)

bitcoin-cli -regtest generatetoaddress 101 "$NEW_ADDRESS"

# Output only the new address
echo "$NEW_ADDRESS"