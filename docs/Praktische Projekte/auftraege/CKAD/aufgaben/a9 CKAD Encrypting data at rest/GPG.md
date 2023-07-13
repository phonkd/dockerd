**G**nu**P**rivacy**G**uard
***

*GnuPG allows you to encrypt and sign your data and communications; it features a versatile key management system, along with access modules for all kinds of public key directories. GnuPG, also known as _GPG_, is a command line tool with features for easy integration with other applications.*

## Install gpg

Was already installed

## Create 4096 bit RSA key

`gpg --full-gen-key`

## List GPG Key

1. `gpg --list-secret-keys --keyid-format long <EMAIL>`

2. Copy the GPG key ID:
   
   ![Pasted image 20230713105242](Pasted%20image%2020230713105242.png)

3. show public Key `gpg --armor --export prevslCopiedId`

## Get fingerprint of pub key

```sh
gpg --fingerprint email.adress@gmail.com
```

![Pasted image 20230713103255](Pasted%20image%2020230713103255.png)