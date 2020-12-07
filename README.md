# bcrypt

[![Build Status](https://travis-ci.com/OrangeTide/libbcrypt.svg?branch=master)](https://travis-ci.com/OrangeTide/libbcrypt)

## Introduction

This library is a simple wrapper providing a convenient reentrant interface for
the bcrypt password hashing algorithm implementation as provided by Solar
Designer at http://www.openwall.com/crypt/.

The provided C interface is inspired in the bcrypt Python module that can be
found at http://code.google.com/p/py-bcrypt/, and consists of a function to
generate salts with the characteristic work factor parameter, one to generate
password hashes which can also used to verify passwords and one designed
specifically to verify passwords and avoid timing attacks. Please check the
header bcrypt.h. It contains the prototypes and lots of comments with examples.

All this code is released to the public domain under the terms of CC0. See the
COPYING file for the legal text.
