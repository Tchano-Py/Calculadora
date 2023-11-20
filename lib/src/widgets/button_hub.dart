import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ClearEntryButtonClick extends ButtonClick {
  ClearEntryButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;
  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          value: '%',
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: 'CE',
          onTap: (value) => onButtonClick(
            ClearEntryButtonClick(value),
          ),
        ),
        Button(
          value: 'C',
          onTap: (value) => onButtonClick(
            ClearButtonClick(value),
          ),
        ),
        Button(
          value: '-',
          colorText: const Color(0xFFFFBB00),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '7',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '8',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '9',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '/',
          colorText: const Color(0xFFFFBB00),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '4',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '5',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '6',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '*',
          colorText: const Color(0xFFFFBB00),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '1',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '2',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '3',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '+',
          colorText: const Color(0xFFFFBB00),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '',
          colorText: const Color(0xFFFFBB00),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '0',
          colorBG: const Color(0xFF2E2F3E),
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '.',
          onTap: (value) => onButtonClick(
            CommonButtonClick(value),
          ),
        ),
        Button(
          value: '=',
          colorBG: const Color(0xFFFFBB00),
          onTap: (value) => onButtonClick(
            EqualsButtonClick(value),
          ),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? colorBG;
  final Color? colorText;
  final void Function(String value)? onTap;
  const Button(
      {super.key,
      required this.value,
      this.onTap,
      this.colorBG,
      this.colorText});

  @override
  Widget build(BuildContext context) {
    var bg = colorBG ?? const Color(0xFF363746);
    var text = colorText ?? const Color(0xFFFFFFFF);
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(value == '%' ? 60 : 0),
        topRight: Radius.circular(value == '-' ? 60 : 0),
      ),
      color: bg,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 18,
                color: text,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
