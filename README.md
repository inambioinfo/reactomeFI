[![Travis-CI Build Status](https://travis-ci.org/kmezhoud/reactomeFI.svg?branch=master)](https://travis-ci.org/kmezhoud/reactomeFI) 
# ReactomeFI
This package provides annotation for gene gene interaction importet from Reactome Data base.

4- Milacic M, Haw R, Rothfels K, Wu G, Croft D, Hermjakob H, D'Eustachio P, Stein L. Annotating cancer variants and anti-cancer therapeutics in reactome. Cancers (Basel). 2012 Nov 8;4(4):1180-211. doi: 10.3390/cancers4041180.

5- Croft D1, Mundo AF, Haw R, Milacic M, Weiser J, Wu G, Caudy M, Garapati P, Gillespie M, Kamdar MR, Jassal B, Jupe S, Matthews L, May B, Palatnik S, Rothfels K, Shamovsky V, Song H, Williams M, Birney E, Hermjakob H, Stein L, D'Eustachio P. The Reactome pathway knowledgebase. Nucleic Acids Res. 2014 Jan;42(Database issue):D472-7. doi: 10.1093/nar/gkt1102. Epub 2013 Nov 15.

#How to install
```
devtools::github_install("kmezhoud/reactomeFI")
library(reactomeFI)
```
# Example
```
library(reactomeFI)
dim(ld_reactomeFI(2014))
[1] 217249      5
> dim(ld_reactomeFI(2015))
[1] 229300      5
> head(ld_reactomeFI(version= 2015))
                  Gene1  Gene2        Annotation Direction Score
1                16-5-5  CDC42         predicted         -  0.82
2                16-5-5   RHOJ         predicted         -  0.82
3                16-5-5   RHOQ         predicted         -  0.82
4 <DELTA>FAS/APO-1/CD95    BID          activate        ->  1.00
5 <DELTA>FAS/APO-1/CD95 CASP10           complex         -  1.00
6 <DELTA>FAS/APO-1/CD95   DAXX complex; reaction         -  1.00

> tail(ld_reactomeFI(2015))
        Gene1  Gene2     Annotation Direction Score
229295    ZP3    ZP4        complex         -  1.00
229296   ZPR1    ZYX      predicted         -  0.59
229297   ZW10 ZWILCH complex; input         -  1.00
229298   ZW10  ZWINT complex; input         -  1.00
229299 ZWILCH  ZWINT complex; input         -  1.00
229300   ZXDA   ZXDC      predicted         -  0.59
```
