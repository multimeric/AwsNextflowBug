# Nextflow AWS Bug

* First, ensure you have an AWS account configured as explained [here](https://www.nextflow.io/docs/latest/awscloud.html#)
* Then, set the queue ARN and region in the config file
* Finally, run `nextflow run bug.nf -bucket-dir some_bucket`
* After some time you should get the error: "Process `spades` terminated for an unknown reason -- Likely it has been terminated by the external system"
* At this point, run `aws batch list-jobs --job-queue MY-QUEUE-ARN --job-status FAILED --output yaml`, and when you find the job that most recently failed, it should say something like "Process `spades` terminated for an unknown reason -- Likely it has been terminated by the external system"

