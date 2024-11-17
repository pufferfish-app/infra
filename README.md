<p align="center">
  <img src="https://github.com/user-attachments/assets/b336b7d7-df3c-401d-bd56-eaac242d2836" width="512">
  <h1 align="center">Pufferfish Infrastructure</h1>
</p>

<p align="center"><b>Backend IaC that powers the Pufferfish app</b></p>

## What is in this repo?

This repository contains Terraform code that spins up 2 services: a MongoDB Atlas cluster and a DigitalOcean App Platform app.

The MongoDB Atlas cluster serves as the database powering the backend [API](https://github.com/pufferfish-app/api), holding user information.

The DigitalOcean App Platform app is a deployment of the backend [API](https://github.com/pufferfish-app/api) as a Docker container.

## How is this used?

The Terraform IaC in this repository is continuously integrated using [HCP Terraform](https://app.terraform.io/app), automatically deploying and modifying our infrastructure on every merge into the main branch.
