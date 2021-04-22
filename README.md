# arrow-setup

WIP script to ease libarrow development setup on Linux.

Installing Arrow R Package on Ubuntu

## About
This is a non-root setup that just works to test the development version of both Arrow library and Arrow R package. The only root part is to install the dependencies (i.e. cmake)

## Step 0 - Clone the Arrow repository

Fork https://github.com/apache/arrow/, then work on your fork:
```
cd ~/github
git clone https://github.com/pachamaltese/arrow 
```

## Step 1 - Install dependencies
```
cd ~/github/arrow/r && wget https://raw.githubusercontent.com/pachamaltese/arrow-setup/main/01-update-system.sh && sudo bash 01-update-system.sh
```

## Step 2 - Environment variables
```
cd ~/github/arrow/r && wget https://raw.githubusercontent.com/pachamaltese/arrow-setup/main/02-environment-variables.sh && bash 02-environment-variables.sh
```

## Step 3 - Build the Arrow Library
```
cd ~/github/arrow/r && source ~/.bashrc && wget https://raw.githubusercontent.com/pachamaltese/arrow-setup/main/03-build-arrow-lib.sh && bash 03-build-arrow-lib.sh
```

## Step 4 - Install the R Package
```
cd ~/github/arrow/r && source ~/.bashrc && wget https://raw.githubusercontent.com/pachamaltese/arrow-setup/main/04-build-arrow-pkg.sh && bash 04-build-arrow-pkg.sh
```

## Step 5 - Changing parameters
```
nano ~/.bashrc
```
Change parameters ON/OFF as needed, then ctrl+o, enter and ctrl+x. Then repeat from step 2.

## References

https://github.com/apache/arrow/issues/6270
https://issues.apache.org/jira/browse/ARROW-10495
https://github.com/apache/arrow/issues/1514
https://embeddeddevelop.blogspot.com/2019/01/clang-tidy-cmake-on-ubuntu-1804.html
https://apt.llvm.org/
https://arrow.apache.org/docs/r/#developing
https://arrow.apache.org/docs/developers/cpp/building.html#faster-builds-with-ninja
