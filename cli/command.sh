cargo run -- create-multisig --threshold 2 --owner DHLXnJdACTY83yKwnUkeoDjqi4QBbsYGa1v8tJL76ViX B6PWvLCWZdEyHgDmEuxZSxacsg2SwN8tTpbv8BMnb2VN


Multisig address:        Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz
Program derived address: 9dsFjygTLcuYy5CSsfgoX8piJQt5NteMRfXmUK5enQDT


cargo run -- show-multisig --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz


1. Update threshold
cargo run -- propose-change-multisig  --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz --threshold 1 --owner DHLXnJdACTY83yKwnUkeoDjqi4QBbsYGa1v8tJL76ViX B6PWvLCWZdEyHgDmEuxZSxacsg2SwN8tTpbv8BMnb2VN
cargo run -- show-transaction --transaction-address 2GVk1aCL5cKXQgYU4tLtPPMzpAdqd5s9z1jAm1BFcd39
cargo run -- --keypair-path /Users/andrewnguyen/Documents/solana/mercurial-multisig/multisig/cli/test_key/id.json approve --transaction-address 2GVk1aCL5cKXQgYU4tLtPPMzpAdqd5s9z1jAm1BFcd39 
cargo run -- execute-transaction --transaction-address 2GVk1aCL5cKXQgYU4tLtPPMzpAdqd5s9z1jAm1BFcd39 --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz

2. Update owners 
cargo run -- propose-change-multisig  --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz --threshold 1 --owner DHLXnJdACTY83yKwnUkeoDjqi4QBbsYGa1v8tJL76ViX
cargo run -- show-transaction --transaction-address 3mVBhRzGstDosPdCe8hLGJBXaAgH59N7CxcLWXyzfy8c
cargo run -- execute-transaction --transaction-address 3mVBhRzGstDosPdCe8hLGJBXaAgH59N7CxcLWXyzfy8c --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz


3. Transfer spl token
spl-token transfer 6KZtuPYHHbninp6Gnyu7qasHvE5NXyMx4usaEsfdGDSy 100 9dsFjygTLcuYy5CSsfgoX8piJQt5NteMRfXmUK5enQDT --allow-unfunded-recipient --fund-recipient
cargo run -- propose-spl-token-transfer  --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz --from Eci3T23L3q3gGwoevkVdZxYiCQsofKq6kg9W2EpNwr5 --to GWkMuj2kbAvcjCYybLRoz1vLv4EFdwj3etBtFYWxbLPZ --amount 100 --auth 9dsFjygTLcuYy5CSsfgoX8piJQt5NteMRfXmUK5enQDT
cargo run -- show-transaction --transaction-address 9VsgY39QGgpgHkmZFNzwLfmkfab3UPNCaXi6DVBLyRo5
cargo run -- execute-transaction --transaction-address 9VsgY39QGgpgHkmZFNzwLfmkfab3UPNCaXi6DVBLyRo5 --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz


4. Propose update program 
solana program deploy /Users/andrewnguyen/Documents/solana/test_deploy/target/deploy/test_deploy.so
solana program set-upgrade-authority 6smSqTxQW1YyLByGpeHSz83xLR8DV6BLzPcg5CnbHWuW --new-upgrade-authority 9dsFjygTLcuYy5CSsfgoX8piJQt5NteMRfXmUK5enQDT
solana program write-buffer --output json --buffer-authority 9dsFjygTLcuYy5CSsfgoX8piJQt5NteMRfXmUK5enQDT /Users/andrewnguyen/Documents/solana/test_deploy/target/deploy/test_deploy.so
solana program set-buffer-authority 3GbmPE7ccTbmXZbLqUbhSJ6hw3bsZ5bqPUh4Fcc9ipwi --new-buffer-authority 9dsFjygTLcuYy5CSsfgoX8piJQt5NteMRfXmUK5enQDT
cargo run -- propose-upgrade --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz --program-address 6smSqTxQW1YyLByGpeHSz83xLR8DV6BLzPcg5CnbHWuW --buffer-address 3GbmPE7ccTbmXZbLqUbhSJ6hw3bsZ5bqPUh4Fcc9ipwi --spill-address DHLXnJdACTY83yKwnUkeoDjqi4QBbsYGa1v8tJL76ViX 
Transaction address: EkM1kXGF1CoAkyg3TnatkyGHam7C1bWy2MCPyU9JjGbU 
cargo run -- execute-transaction --transaction-address EkM1kXGF1CoAkyg3TnatkyGHam7C1bWy2MCPyU9JjGbU --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz
cargo run -- propose-upgrade-authority --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz --program-address 6smSqTxQW1YyLByGpeHSz83xLR8DV6BLzPcg5CnbHWuW --new-authority-address DHLXnJdACTY83yKwnUkeoDjqi4QBbsYGa1v8tJL76ViX
cargo run -- execute-transaction --transaction-address EXGCXRFdgsBgFgWLhWVfNJZZVtHSPCgeqVw3cT2kE6HB --multisig-address Gj28UcctSRXTWvQtFC1WWYT2LJptnzstgW7ktmavxjjz
solana program close 6smSqTxQW1YyLByGpeHSz83xLR8DV6BLzPcg5CnbHWuWc




Scenario: 
1. Update threshold  -> done 
2. Update owners  -> done 
3. Transfer spl-token -> done 
4. Propose update program -> done 
