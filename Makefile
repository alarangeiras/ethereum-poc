compile-sol:
	docker run --rm -v $(shell pwd)/src:/app/src -v $(shell pwd)/build:/app/build ethereum/solc:0.5.7-alpine --overwrite --combined-json=abi,bin,metadata --output-dir /app/build /app/src/contracts/payment.sol
geth-client:
	docker exec -it geth-server /usr/local/bin/geth attach http://127.0.0.1:8545
node-shell:
	docker run --rm -it -v $(shell pwd):/app/ --entrypoint /bin/sh node:14.15.5-alpine3.13
