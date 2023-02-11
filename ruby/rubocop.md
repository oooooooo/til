# rubocop

## Auto-correct

```shell
rubocop -A
# Safe
rubocop -a
# Generating comments in the code to stop the reporting of offenses that could not be corrected automatically.
rubocop -A --disable-uncorrectable
```
<https://docs.rubocop.org/rubocop/usage/auto_correct.html>

## Disabling Cops within Source Code

```ruby
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
def foo
  :
end
# rubocop:enable all
```

<https://docs.rubocop.org/rubocop/configuration.html#disabling-cops-within-source-code>
