# flutter_tailwindcss

Experience tailwind writing flutter patterns.

## Introduction

[中文](./README_ZH.md) | [English](./README.md)

### How to use

```
dependencies:
  flutter_vant_kit: ^0.0.4
```

## Planing

| doing      | name           | verison |
| ---------- | -------------- | ------- |
| 🚀 done    | `TwColor`      | `0.0.2` |
| 🚀 done    | `Spacing`      | `0.0.3` |
| 👷 doing   | `TwText`       | -       |
| 👷 doing   | `TwFont`       | -       |
| ⏳ planing | `BorderRadius` | -       |
| ⏳ planing | `BorderWidth`  | -       |
| ⏳ planing | `Divide`       | -       |
| ⏳ planing | `Shadow`       | -       |

> I think so much for the moment, and I will modify it according to the actual situation later.

## Example

### colors

![](https://gitee.com/meetqy/flutter_tailwindcss/raw/main/images/docs/colors.png)

### spacing

![](https://gitee.com/meetqy/flutter_tailwindcss/raw/main/images/docs/spacing.png)

### TwText

'TwText' is used in combination with 'TwFont'. TwText is the equivalent of Text in flutter but with an extra 'className' parameter.

** Look at the difference with 'tailwind' **

![](https://gitee.com/meetqy/flutter_tailwindcss/raw/main/images/docs/font.png)

```html
<p class="font-sans text-lg font-medium text-slate-900">
  The quick brown fox jumps over the lazy dog.
</p>
```

### Two ways to use it

First, through 'TwText'

```dart
TwText(
  'The quick brown fox jumps over the lazy dog.', className: [
  /// 文字等宽
  TwFont().sans,
  /// 文字大小 + 行高
  TwFont().text.lg,
  /// 文字颜色
  TwFont().slate.shade900,
  /// 加粗
  TwFont().medium
])
```

The second way is to use the native 'Text' with the 'className' method `extension` from 'TextStyle'

```dart
Text(
  'The quick brown fox jumps over the lazy dog.',
  style: const TextStyle().className([
    TwFont().sans,
    TwFont().text.lg,
    TwFont().medium,
    TwFont().slate.shade900
  ]),
);
```

> Because TwFont is a class, you don't need to install plug-ins to do this

### Available Properties

| Properties      | Usage                                                                                         | Tailwind                                                        |
| --------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------- |
| Font Family     | `TwFont().{family}`                                                                           | [font-family](https://tailwindcss.com/docs/font-family)         |
| Font Size       | `TwFont().text.{size}`                                                                        | [font-size](https://tailwindcss.com/docs/font-size)             |
| Font Style      | `TwFont().{style}`                                                                            | [font-style](https://tailwindcss.com/docs/font-style)           |
| Font Weight     | `TwFont().{weight}`                                                                           | [font-weight](https://tailwindcss.com/docs/font-weight)         |
| Letter Spacing  | `TwFont().tracking.{spacing}`                                                                 | [letter-spacing](https://tailwindcss.com/docs/letter-spacing)   |
| Line Height     | `TwFont().leading.{height}`                                                                   | [line-height](https://tailwindcss.com/docs/line-height)         |
| Text Color      | `TwFont().text.{color}`                                                                       | [text-color](https://tailwindcss.com/docs/text-color)           |
| Text Decoration | `TwFont().{decoration}`, `decoraiton.{colot}`, `decoraiton.{style}`, `decoraiton.{thickness}` | [text-decoration](https://tailwindcss.com/docs/text-decoration) |

## Demo in the project

![](https://gitee.com/meetqy/flutter_tailwindcss/raw/main/images/docs/demo1.png)
