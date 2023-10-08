import 'package:eclipse_app/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class UpcomingEclipseContainer extends StatelessWidget {
  const UpcomingEclipseContainer({super.key, required this.isUpcomming});
  final bool isUpcomming;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      constraints: const BoxConstraints(maxHeight: 300),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color:
              isUpcomming ? const Color(0xFFFCE49B) : const Color(0xFF2A2A2A)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 12,
                color: !isUpcomming
                    ? const Color(0xFFF6F6F6)
                    : const Color(0xFF322601),
              ),
              const SizedBox(width: 5),
              Text(
                "Oct 13 - Oct 15",
                style: context.bodySmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: !isUpcomming
                        ? const Color(0xFFF6F6F6)
                        : const Color(0xFF322601)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            "Lunar Eclipse",
            style: context.bodySmall!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: !isUpcomming
                    ? const Color(0xFFF6F6F6)
                    : const Color(0xFF322601)),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFF322601),
                borderRadius: BorderRadius.circular(50)),
            padding: const EdgeInsets.all(8),
            child: Text(
              "Annularr",
              style: context.bodySmall!.copyWith(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
