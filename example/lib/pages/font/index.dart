import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';
import 'package:flutter_highlight/themes/dark.dart';
import 'package:flutter_highlight/themes/github-gist.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/gradient-dark.dart';
import 'package:flutter_highlight/themes/vs.dart';
import 'package:flutter_tailwindcss/flutter_tailwindcss.dart';

class FontPage extends StatefulWidget {
  const FontPage({Key? key}) : super(key: key);

  @override
  _FontPageState createState() => _FontPageState();
}

class _FontPageState extends State<FontPage> {
  String str = 'Utilities for controlling the font family of an element.';
  String strZh = '控制元素字体序列的功能类。';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Typography"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TwText(
                        'Setting the font family',
                        className: [
                          TwFont().text.lg,
                          TwFont().semibold,
                          TwFont().slate.shade900,
                          TwFont().serif
                        ],
                      ),
                      TwText(
                        'You can control the typeface of text using the font family utilities.',
                        className: [TwFont().text.base],
                      ),
                      Container(
                        margin: TwSpacing.t4,
                        child: Card(
                          color: TwColor.slate.shade50,
                          child: Padding(
                            padding: TwSpacing.a4,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TwText('font-sans', className: [
                                            TwFont().sans,
                                            TwFont().text.sm,
                                            TwFont().slate.shade500,
                                            TwFont().medium
                                          ]),
                                          TwText(str, className: [
                                            TwFont().sans,
                                            TwFont().text.lg,
                                            TwFont().medium,
                                            TwFont().slate.shade900
                                          ]),
                                          TwText(strZh, className: [
                                            TwFont().mono,
                                            TwFont().text.lg,
                                            TwFont().medium,
                                            TwFont().slate.shade900
                                          ]),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 36, bottom: 36),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TwText('font-serif', className: [
                                              TwFont().serif,
                                              TwFont().text.sm,
                                              TwFont().slate.shade500,
                                              TwFont().medium
                                            ]),
                                            TwText(str, className: [
                                              TwFont().serif,
                                              TwFont().text.lg,
                                              TwFont().medium,
                                              TwFont().slate.shade900
                                            ]),
                                            TwText(strZh, className: [
                                              TwFont().serif,
                                              TwFont().text.lg,
                                              TwFont().medium,
                                              TwFont().slate.shade900
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TwText('font-mono', className: [
                                            TwFont().mono,
                                            TwFont().text.sm,
                                            TwFont().slate.shade500,
                                            TwFont().medium
                                          ]),
                                          TwText(str, className: [
                                            TwFont().mono,
                                            TwFont().text.lg,
                                            TwFont().medium,
                                            TwFont().slate.shade900
                                          ]),
                                          TwText(strZh, className: [
                                            TwFont().mono,
                                            TwFont().text.lg,
                                            TwFont().medium,
                                            TwFont().slate.shade900
                                          ]),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
