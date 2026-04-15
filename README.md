# apac-digital-infra

Terraform for the apac-digital team's AWS resources at Meridian Logistics.

One root per account and region, under `accounts/<account>/<region>/`. State
lives in `s3://meridian-terraform-state/apac-digital/<account>/<region>/terraform.tfstate`.

| Account | Region | Buckets |
|---|---|---|
| edge-01 | ap-southeast-1 | 2 |
| edge-02 | ap-southeast-1 | 2 |

Changes go through a pull request. CODEOWNERS asks @meridian-logistics-demo/apac-digital to review.

---

<sub>Meridian Logistics is a fictional company. This repository is demo data
made by AlertD; its people, accounts and resources are not real.</sub>
