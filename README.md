# hyperpay_sdk_ios

Vendored XCFrameworks for the HyperPay (OPPWA) Mobile SDK v7.11.0.

This pod is consumed as a dependency of [`hyperpay_sdk`](https://pub.dev/packages/hyperpay_sdk) and is not intended for direct use.

## Frameworks Included

- `OPPWAMobile.xcframework` — HyperPay OPPWA Mobile SDK v7.11.0
- `ipworks3ds_sdk.xcframework` — 3DS2 authentication (build 9625, non-deploy variant)

Both contain `ios-arm64` and `ios-arm64_x86_64-simulator` slices.

## Releasing a new SDK version

1. Replace both `*.xcframework` directories with the ones from HyperPay's `iOS_Frameworks_<version>.zip`,
   renaming `ipworks3ds_sdk_<build>.xcframework` → `ipworks3ds_sdk.xcframework` so the directory name
   matches the inner framework name.
2. Bump `s.version` in `hyperpay_sdk_ios.podspec` to the OPPWA version.
3. Commit, then tag and push — the podspec resolves `:tag => s.version`:

```bash
git tag 7.11.0
git push origin main --tags
```

## License

MIT
