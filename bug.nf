nextflow.enable.dsl=2

process spades {
    container "quay.io/biocontainers/spades:3.15.3--h95f258a_0"
    output:
        path "out.txt"
    script:
      """
      metaspades.py --help > out.txt
      """
}

workflow {
    spades()
}
