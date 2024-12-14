## Decentralized Identity in Super Apps: A Formal Security Analysis

This repository contains the formal model and proofs for Decentralized Identity in Super Apps. The models can be verified using the Tamarin Prover.

### Installation

To check the proofs, first install Tamarin version 1.8.0:
- Follow the installation instructions in the [Tamarin manual](https://tamarin-prover.com/manual/master/book/002_installation.html).
- Alternatively, you can install it via Homebrew with the following command:

```bash
brew install tamarin-prover/tap/tamarin-prover
```

After installation, you can review the proofs provided in the [proofs](https://github.com/zerrymore11/VerifyDID/tree/main/proofs) directory.
```bash
cd proofs 
tamarin-prover interactive .
```


As the model is large, it may take a considerable amount of time to load all of the components. We recommend creating a new folder and loading only the specific theory you are interested in each time.

### Automated Proof with Tactic
To reproduce the [proofs](https://github.com/zerrymore11/VerifyDID/tree/main/proofs) from our manuscript, we provide a shell script `batch-all.sh` that will generate all proofs and the corresponding logs for each property.
Please note that reproducing all the results may take some time, as the proof process is time-consuming. 

### Interactive Mode for Inspection

To manually inspect the proof state, especially for risk analysis, use the following command:
```bash
tamarin-prover interactive . -D=goalx --verbose --derivcheck-timeout=0.
```
Here, goalx can be replaced with one of `exec`, `goal1`, `goal2`, `goal3`, `goal4` or `goal5`. For example, to check the Executability lemma, use:

```bash
tamarin-prover interactive . -D=exec --verbose --derivcheck-timeout=0.
```

### Reference
We use the TLS/HTTPS multiset rewriting rules modeled in [SOAP Project](https://github.com/soap-wg/soap-proofs/blob/main/src/tls.spthy). 
