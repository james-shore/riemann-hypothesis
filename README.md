# riemann-hypothesis

[![checks](https://github.com/leanprover-community/riemann-hypothesis/actions/workflows/checks.yml/badge.svg)](https://github.com/leanprover-community/riemann-hypothesis/actions/workflows/checks.yml)

A [Comparator](https://github.com/leanprover/comparator) setup and community build cache for the Lean formalization that
claims a proof of the Riemann Hypothesis, and of GRH for Dirichlet L-functions, announced on
2026-11-20 at <https://alpo.ge/remark.pdf>.

The first commit, `40e56bab`, is the submitted Lean source exactly as published. Since then,
cleanup pull requests have removed 10,724 of its 175,187 files and edited 18; the
[notes](verification/NOTES.md#source) list them. Check out `40e56bab` for the original. This
repository also adds Comparator files and cache infrastructure:

| File | What it is |
|---|---|
| [`src/Challenge.lean`](src/Challenge.lean) | the five theorems, stated in a file that imports only Mathlib |
| [`comparator.json`](comparator.json) | the Comparator config |
| [`export-targets.txt`](export-targets.txt) | the declarations to export |
| [`verification/`](verification/NOTES.md) | our notes, and the results once there are some |
| [`scripts/`](scripts/) | public Lake cache configuration and reproducible bootstrap/publishing tools |

## Using the build cache

Fetch and restore Mathlib and this project's compiled modules:

```bash
lake exe cache get
lake build --no-build
```

The cache settings are in `lakefile.toml`; no user configuration is needed. The first command
fetches both caches anonymously and extracts the oleans to `.lake/build`. It prefers a successful
CI build matching the current clean source, configuration, dependency manifest and toolchain;
documentation-only commits can reuse the same cache. Otherwise it tries the original published
cache. The second command checks the default build targets without compiling them. The original
project cache is 4.94 GB and contains portable Lean outputs and generated C. Subsequent ordinary
builds compile changed modules and their dependents.

The community cache includes outputs from **untrusted pull requests and volunteer machines**.
Download integrity checks do not verify proofs. Use an independent fresh build when you need
to trust the result.

The [cache notes](verification/CACHE.md) describe the pinned published archive, the cheaper
bootstrap that reuses its proofs, and how to produce and publish future caches. For independent
verification, follow the clean-build instructions below.

## What is claimed

| Theorem in `Main.lean` | Statement |
|---|---|
| `riemannHypothesis` | Mathlib's `RiemannHypothesis` |
| `riemannZeta_eq_zero_re` | the same, written out |
| `LFunction_ne_zero_of_half_lt_re` | L(χ, s) ≠ 0 for Re s > 1/2, for every modulus and every Dirichlet character, except the trivial character at s = 1 |
| `LFunction_eq_zero_re` | every zero of L(χ, s) with 0 < Re s < 1 has Re s = 1/2 |
| `LFunction_eq_zero_re_of_isPrimitive` | the same, for primitive characters |

## Checking it

```bash
export LEAN_ABORT_ON_PANIC=1   # as Comparator sets it: stop on an internal error, don't continue
export LAKE_ARTIFACT_CACHE=false   # rebuild the submission even if cache-env.sh was sourced earlier
export MATHLIB_CACHE_GET_URL=https://cache.mathlib.org/mathlib4   # Mathlib's current cache server

# 1. Export the challenge. Clean clone at $CLEAN, Lean v4.33.1.
cd "$CLEAN"
lake exe mathlib/cache get
lake build Challenge
lake env lean4export Challenge -- $(cat export-targets.txt) > challenge.export

# 2. Build the solution. Second clone, inside a sandbox with no network. Takes hours.
lake exe mathlib/cache get      # before entering the sandbox
lake build Main         # inside the sandbox

# 3. Export the solution. Still inside the sandbox; only solution.export comes out.
lake env lean4export Main -- $(cat "$CLEAN/export-targets.txt") > solution.export

# 4. Judge. Lean v4.36.0, from an empty directory, with the config from the clean clone.
lake comparator --config "$CLEAN/comparator.json" \
  --challenge-from-export "$CLEAN/challenge.export" --solution-from-export solution.export
```

What to know before running it:

- **Two Lean versions.** The project is pinned to Lean `v4.33.1`, and `lake comparator` exists
  only from Lean 4.35. So the proof is built and exported with `v4.33.1` and judged with
  `v4.36.0`. The exporter is [lean4export](https://github.com/leanprover/lean4export) at tag
  `v4.33.0`, built with Lean `v4.33.1`.
- **Challenge first.** Compiling the submission runs its code, so the challenge is exported
  where none of that code has been compiled. CI does step 1 on every push and publishes the
  result as the `challenge-export` artifact. Its sha256 is
  `bd484ac9886a96f26b1d9a7a59ebd45b7a70d102c015d4f31f9302bbdd6ab2b9`.
- **Not `lake exe cache get`.** In this repository that command also downloads prebuilt files
  for the submission itself, and `lake build Main` then compiles nothing. Steps 1 and 2 use
  `lake exe mathlib/cache get`, which fetches Mathlib only.
- **Cost.** Hours on a large machine, about 100 GB of disk, and a lot of memory for step 4.

The [notes](verification/NOTES.md) have the details: where the source came from, the Lean
version and its known kernel fixes, the tools, the sandboxes, the test of these steps, and the
limits of what a passing run shows.

## License

The submission belongs to its author and was published without a license. It is mirrored here
for verification only: unmodified at commit `40e56bab`, and with the changes listed in the
[notes](verification/NOTES.md#source) since.
