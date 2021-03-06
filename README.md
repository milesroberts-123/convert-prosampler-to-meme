# convert-prosampler-to-meme
Use regular expressions to convert the motifs output by ProSampler to MEME motif format.

[ProSampler](https://github.com/zhengchangsulab/prosampler) is an awesome new motif-discovery algorithm that's super easy to use. However, similar to other motif-discovery tools it outputs its results in a pseudo-MEME motif format that can be a bit of a headache to convert to true MEME motif format. Lucky for you, I already did the hard work!

## USAGE

This script has two required arguments -i and -o. -i denotes the name of the input file containing the pseudo-MEME formatted motifs given by ProSampler (which ProSampler automatically gives a .meme extension too) and -o denotes the name you want for the output file. For example:

`./prosampler_to_meme.bash -i prosampler_example.meme -o prosampler_example.out`

Will convert the motifs in the prosampler_example.meme file in this repository into MEME motif format and save the results to prosampler_example.out. This file can then be directly uploaded to any online [MEME suite tool](http://meme-suite.org/index.html) or input into the command line versions of MEME suite tools.

## DEPENDENICES

None! You only need to be able to run the `sed` command to use this script. I tested this script using the 2019-11-09 version of ProSampler and MEME v5.1.1 on an Ubuntu terminal. 
