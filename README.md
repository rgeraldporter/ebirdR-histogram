# eBird Histogram Reader (ebirdR-histogram)
#### v0.1.0

### Purpose

To generate graphs, charts, etc from bird species observations using the datasets collected via eBird.

### Usage

Import the code helper:

```
source("helper.R")
```

Then import a CSV generated by [ebird-histogramr-cli](https://github.com/rgeraldporter/ebird-histogramr-cli):

```
data <- read.csv("L2093687-histogram.csv", header = T)
```

Model a bird:

```
mall <- bird(data, "Mallard")
```

Plot a graph:

```
birdBar(mall)
```

### Notes

This is a work in progress. 

##License

The MIT License (MIT)

Copyright (c) 2016 Robert Gerald Porter

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.