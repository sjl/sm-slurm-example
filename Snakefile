rule foo:
    log:
        "logs/{sample}.log",
    input:
        infile="{sample}.in",
    output:
        outfile="{sample}.out",
    threads: 8
    resources:
        mem_mb=512,
        runtime="1m",
    shell:
        "("
        "echo Running with {threads} threads."
        " && sleep 10"
        " && wc -c {input.infile:q} > {output.outfile:q}"
        " && echo Finished."
        ") >{log} 2>&1"
