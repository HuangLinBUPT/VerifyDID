# Decentralized Identity in Super Apps: A Formal Security Analysis

This repository contains the formal model and proofs for Decentralized Identity in Super Apps. The models can be verified using the Tamarin Prover.

## Installation and Setup

To check the proofs, first install Tamarin version 1.8.0:
- Follow the installation instructions in the [Tamarin manual](https://tamarin-prover.com/manual/master/book/002_installation.html).
- Alternatively, you can install it via Homebrew with the following command:

```bash
brew install tamarin-prover/tap/tamarin-prover
```

Set the terminal encoding to UTF-8, and make sure that oracle file is executable:
```bash
export LC_ALL=C.UTF-8
chmod +x oracleDID
```

## Review the Proofs

We have provided the proofs for each security goal and the risks with counterexample traces (in `.png` format) in the directory [proofs](https://github.com/zerrymore11/VerifyDID/tree/main/proof). You can review them with the Tamarin frontend:

```bash
cd proof
tamarin-prover interactive .
```


Since the model is large, it may take a considerable amount of time to load all the theories. We recommend creating a new empty folder and loading only the specific theory you are interested in each time. For example:


```bash
mkdir inspector
cd inspector
tamarin-prover interactive .
```

Now, open the webpage at [http://127.0.0.1:3001/](http://127.0.0.1:3001/), select a `.spthy` file from the [proof](https://github.com/zerrymore11/VerifyDID/tree/main/proof) directory, and click `Load new theory`.

## Interactive Proof with Tamarin
To prove each security goal and inspect the proof state manually, use the following command:

```bash
tamarin-prover interactive . -D=goalx --verbose --derivcheck-timeout=0
```

Here, goalx can be replaced with one of `exec`, `goal1`, `goal2`, `goal3`, `goal4` or `goal5`. For example, to check the Executability lemma, use:

```bash
tamarin-prover interactive . -D=exec --verbose --derivcheck-timeout=0
```

## Automated Proof with Tactic
To reproduce all the [proofs](https://github.com/zerrymore11/VerifyDID/tree/main/proof) in our manuscript, we provide a shell script `batch-all.sh` that will generate all proofs and the corresponding logs for each property.
Please note that reproducing all the results may take some time, as the proof process is time-consuming. 
```bash
chmod +x batch-all.sh batch-run.sh
./batch-all.sh
```



## Reference
We use the TLS/HTTPS multiset rewriting rules modeled in [SOAP Project](https://github.com/soap-wg/soap-proofs/blob/main/src/tls.spthy). 
