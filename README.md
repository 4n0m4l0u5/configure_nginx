
# configure_nginx

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with configure_nginx](#setup)
    * [What configure_nginx affects](#what-configure_nginx-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with configure_nginx](#beginning-with-configure_nginx)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

This module uses the puppet/nginx module to configure a very basic web server, this was made for a mini-project interview.

See the init.pp file for detailed configuration.

## Setup

Include in your Puppetfile:
mod '4n0m4l0u5-configure_nginx', '0.1.0'

Or...

Install directly in your modules folder inside your control-repo:
puppet module install 4n0m4l0u5-configure_nginx --version 0.1.0

### What configure_nginx affects **OPTIONAL**

Everything should be in the init.pp file

### Setup Requirements **OPTIONAL**

This module requires the puppet-nginx module

### Beginning with configure_nginx

Just include it
include 'configure_nginx'

## Usage

Change it however you want.

## Reference

## Limitations

Only tested on Ubuntu 16.04

## Development

Free to change after I get the new job! If I get it :D

## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should consider using changelog). You can also add any additional sections you feel are necessary or important to include here. Please use the `## ` header.
