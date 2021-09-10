build:
	# ... build ...
	cargo +nightly build
	# TODO: cargo +stable build
	# ... test ...
	cargo +nightly test --no-run
	# TODO: cargo +stable test --no-run
	# ... bench ...
	cargo +nightly bench --no-run
	# ... doc ...
	cargo +nightly doc
	# TODO: cargo +stable doc
	# ... meta commands ...
	cargo +nightly clippy --all-targets --all-features

test:
	# ... test ...
	cargo +nightly test
	cd cbordata-derive; cargo +nightly test
	# TODO: cargo +stable test --no-run
	# TODO: cd cbordata-derive; cargo +nightly test

bench:
	# ... test ...
	cargo +nightly bench
	cd cbordata-derive; cargo +nightly bench
	# TODO: cargo +stable test --no-run
	# TODO: cd cbordata-derive; cargo +nightly test

flamegraph:
	echo "not an executable"

prepare:
	check.sh check.out
	perf.sh perf.out

clean:
	cargo clean
	rm -f check.out perf.out flamegraph.svg perf.data perf.data.old
