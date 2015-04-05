# filegen

[![Build Status](https://travis-ci.org/mpepping/puppet-filegen.svg?branch=master)](https://travis-ci.org/mpepping/puppet-filegen)

#### Table of Contents

1. [Overview](#overview)
2. [Usage](#usage)

## Overview

Adds a custom function named 'filegen', which generates a file on a puppet 
master, using facts an variables from the agent.

My usecase is generating (wrapper) shell-scripts on the puppetmaster, with
arguments passed from the agents facts.


## Usage

Add the function to a manifest or call as a resource param.

    filegen('/tmp/some_file', "Hello world!")


