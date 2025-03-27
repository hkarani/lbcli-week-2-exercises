# Created a SegWit address.
# Add funds to the address.
# Return only the Address
NEW_ADDRESS=$(bitcoin-cli getnewaddress "" bech32)

AMOUNT=0.001
bitcoin-cli sendtoaddress "$NEW_ADDRESS" "$AMOUNT"

echo "$NEW_ADDRESS"