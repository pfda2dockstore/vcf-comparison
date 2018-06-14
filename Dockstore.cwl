baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: vcf-comparison
inputs:
  ref_bed:
    doc: An optional BED file whose coordinates will be used to constraint the comparison
    inputBinding:
      position: 4
      prefix: --ref_bed
    type: File?
  ref_vcf:
    doc: The GRCh37 VCF (ideally compressed with bgzip) with the benchmark set variants
    inputBinding:
      position: 3
      prefix: --ref_vcf
    type: File
  test_bed:
    doc: An optional BED file whose coordinates will be used to constraint the comparison
    inputBinding:
      position: 2
      prefix: --test_bed
    type: File?
  test_vcf:
    doc: The GRCh37 VCF (ideally compressed with bgzip) with the test set variants
    inputBinding:
      position: 1
      prefix: --test_vcf
    type: File
label: VCF Comparison
outputs:
  fn_tbi:
    doc: ''
    outputBinding:
      glob: fn_tbi/*
    type: File
  fn_vcf:
    doc: ''
    outputBinding:
      glob: fn_vcf/*
    type: File
  fp_tbi:
    doc: ''
    outputBinding:
      glob: fp_tbi/*
    type: File
  fp_vcf:
    doc: ''
    outputBinding:
      glob: fp_vcf/*
    type: File
  summary_txt:
    doc: ''
    outputBinding:
      glob: summary_txt/*
    type: File
  tp_tbi:
    doc: ''
    outputBinding:
      glob: tp_tbi/*
    type: File
  tp_vcf:
    doc: ''
    outputBinding:
      glob: tp_vcf/*
    type: File
  vcfeval_log:
    doc: ''
    outputBinding:
      glob: vcfeval_log/*
    type: File
  weighted_roc_tsv:
    doc: ''
    outputBinding:
      glob: weighted_roc_tsv/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/vcf-comparison:3
s:author:
  class: s:Person
  s:name: George Asimenos
