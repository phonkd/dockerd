****

**S**ecrets **OP**eration**S**

is an editor of encrypted files that supports YAML, JSON, ENV, INI and BINARY formats and encrypts with AWS KMS, GCP KMS, Azure Key Vault, age, and PGP. ([demo](https://www.youtube.com/watch?v=YTEVyLXFiq0))

## Erstelle für dich ein GPG Schlüssel-paar (RSA 4096Bit), mit deiner Email

[GPG](GPG.md)

`gpg --full-gen-key`

![Pasted image 20230713092444](../../../../../ressources/Pasted%20image%2020230713092444.png)

![Pasted image 20230713092548](../../../../../ressources/Pasted%20image%2020230713092548.png)

### Public Key exportieren

1. Key id finden `gpg --list-secret-keys --keyid-format long <email>`
   
   ![Pasted image 20230713105306](../../../../../ressources/Pasted%20image%2020230713105306.png)

2. `gpg --armor --export <id> > file`

## Lege eine Secret-Configuration für Kubernetes an, die so auch in der Realität vorkommen könnte

### 1. Secret aus key file erstellen

```yaml
kubectl create secret generic --from-file pub.key maiaccount -n namespace-frontend-1 --dry-run=client -o yaml > maiaccount.yml
```

## Verschlüssele diese mit SOPS und deinem GPG Key


```sh
sops --encrypt --pgp=gpgid filename.yml > encryptdfilename
```

[GPG](GPG.md)

## Enschlüssle die datei wieder

```bash
sops -d secrets.enc.yaml
```
*password was entered*

![Pasted image 20230713110431](../../../../../ressources/Pasted%20image%2020230713110431.png)

*On the left: decrypted key, on the right non encrypted key*

## Bonus (why should secrets be encrypted)

>[!answer]
>Kubernetes by default **encodes** secrets using base 64.
>Files are not human readable but anyone can decode them to human readable again.
>since secrets can store information like passwords, they should not be accessible.
>However maybe you want your secrets to be e.g on git. Then encryption can help.b

## Explained for later:

1. Public Key (email) GPG was created
2. K8s secret containing Public key was created
3. Another GPG Key was created (not really)
4. K8s secret was encrypted using sops and the gpg key
5. Encrypted file was decrypted using sops again (with password)