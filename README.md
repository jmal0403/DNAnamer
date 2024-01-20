<a name="readme-top"></a>
<!--
*** DNAnamer: DNA N-gram analysis framework
*** John Stephen Malamon, Ph.D.
-->

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project
 

DNAnamer is a generalized and extensible methodological framework and analysis toolkit for the supervised classification of DNA sequences based on their N-gram frequency patterns.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Built With

R version 3.4.2


<!-- GETTING STARTED -->
## Getting Started

install.packages("devtools")
library("devtools")

install.packages("remotes")
library("remotes")

install.packages("githubinstall")
library("githubinstall")

remotes::install_git("https://github.com/jmal0403/DNAnamer", dependencies=TRUE, force=TRUE)
library(DNAnamer)

### Prerequisites

testthat, knitr, rmarkdown, biomartr, BiocManager, seqinr, fastmap, caret, stringr, dplyr, e1071, pROC, randomForest

### Installation

library(jmal0403/DNAnamer)

<!-- USAGE EXAMPLES -->

## Usage

Please see wiki. 

See the [open issues](https://github.com/jmal0403/DNAnamer/issues) for a code demonstation.


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.


<!-- CONTACT -->
## Contact

Your Name - John Stephen Malamon, Ph.D.

Project Link: [https://github.com/jmal0403/DNAnamer](https://github.com/jmal0403/DNAnamer)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



