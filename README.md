# KeyURI

A URI-based format for serializing cryptographic keys.

KeyURI leverages the URI generic syntax defined in [RFC 3986] to provide simple
and succinct encodings of cryptographic keys, including public keys,
private/secret keys, and encrypted secret keys with password-based key
derivation.

[RFC 3986]: https://tools.ietf.org/html/rfc3986

## Examples

#### AES-128 Key

```
secret.key:aes128;B2i2LK4-k8ya82Qs7WzwMg
```

#### X25519 Private Scalar

```
secret.key:x25519;ZDC2tHX7G6qdicr5dYhsrDMx4TiOvUy7MZBVLxZqykk
```

#### X25519 Private Scalar with Comment (i.e. fragment)

```
secret.key:x25519;ZDC2tHX7G6qdicr5dYhsrDMx4TiOvUy7MZBVLxZqykk#alice@example.com
```

#### X25519 Private Scalar with Key ID ("kid")

```
secret.key:x25519;ZDC2tHX7G6qdicr5dYhsrDMx4TiOvUy7MZBVLxZqykk?kid=package-signing-2017-12-05
```

#### X25519 Private Scalar (encrypted w\ AES-128-SIV using scrypt-derived password)

```
secret.key+encrypted:x25519+aes128siv;RY7FkOJ_kruyeRtZsW5nclZH1YmO8sJhweSOjGxUiIDFlVAcEPMYRgwDLQZeN1_r?pbkdf=scrypt-n65536r8p1-CJ8zynsGxuwioEH4Gh930g
```

#### Ed25519 Private Scalar

NOTE: There is technically nothing that binds a scalar to a particular elliptic curve;
it's just an integer. However we deliberately domain separate scalars to tie them to
particular usage patterns.

```
secret.key:ed25519;D9FA0EDJgYex11f5e0cadHv15AWht-357NCaw_pUUR4
```

#### Ed25519 Public Key

```
public.key:ed25519;wzyP8z1yeuIcZPH94oyeuItLw_jB8NbucrS_0M4VjhI
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/miscreant/miscreant

## Copyright

Copyright (c) 2017 [The Miscreant Developers][AUTHORS].
Distributed under the MIT license. See [LICENSE.txt] for further details.

Some language-specific subprojects include sources from other authors with more
specific licensing requirements, though all projects are MIT licensed.
Please see the respective **LICENSE.txt** files in each project for more
information.

[AUTHORS]: https://github.com/miscreant/miscreant/blob/master/AUTHORS.md
[LICENSE.txt]: https://github.com/miscreant/miscreant/blob/master/LICENSE.txt
