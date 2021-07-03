# arrow-setup

WIP script to ease libarrow development setup on Linux.

Installing Arrow R Package on Ubuntu

## About
This is a non-root setup that just works to test the development version of both Arrow library and Arrow R package. The only root part is to install the dependencies in the 1st step (i.e. cmake)

## Step 0 - Clone the Arrow repository

Fork https://github.com/apache/arrow/, then work on your fork:
```
cd ~/github
git clone https://github.com/pachamaltese/arrow 
```

## Step 1 - Install dependencies (requires root/sudo access)
```
cd ~/github/arrow/r && wget https://raw.githubusercontent.com/pachamaltese/arrow-setup/main/01-install-dependencies.sh && sudo bash 01-install-dependencies.sh
```

## Step 2 - Environment variables
```
cd ~/github/arrow/r && wget https://raw.githubusercontent.com/pachamaltese/arrow-setup/main/02-install-arrow.sh && bash 02-install-arrow.sh
```

## Step 3 - Changing parameters (Optional)
```
nano ~/.bashrc
```
Change parameters ON/OFF as needed, then ctrl+o, enter and ctrl+x. Then repeat from step 2.

## Troubleshooting

If you use RStudio you might get this error:

```
> library(arrow)
Error: package or namespace load failed for ‘arrow’ in dyn.load(file, DLLpath = DLLpath, ...):
 unable to load shared object '/home/pacha/R/x86_64-pc-linux-gnu-library/4.0/arrow/libs/arrow.so':
  /home/pacha/R/x86_64-pc-linux-gnu-library/4.0/arrow/libs/arrow.so: undefined symbol: _ZN5arrow2fs9S3Options13FromAccessKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_
```

Copy these lines from `~/.bashrc`

```
export ARROW_HOME=~/.arrow
export LD_LIBRARY_PATH=${ARROW_HOME}/lib:${LD_LIBRARY_PATH}
export ARROW_R_DEV=true
```

And paste those in `~/.profile`, which will enable those variables for desktop apps, then *reboot* and RStudio will show this output:

```
> Sys.getenv("LD_LIBRARY_PATH")
[1] "/usr/lib/R/lib:/home/pacha/.arrow/lib::::/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/default-java/lib/server:/home/pacha/.arrow/lib:"

> library(arrow)
Attaching package: ‘arrow’The following object is masked from ‘package:utils’:    timestamp> 
```

## References

* https://github.com/apache/arrow/issues/6270
* https://issues.apache.org/jira/browse/ARROW-10495
* https://github.com/apache/arrow/issues/1514
* https://embeddeddevelop.blogspot.com/2019/01/clang-tidy-cmake-on-ubuntu-1804.html
* https://apt.llvm.org/
* https://arrow.apache.org/docs/r/#developing
* https://arrow.apache.org/docs/developers/cpp/building.html#faster-builds-with-ninja
