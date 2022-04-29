// GridView.count(
// primary: false,
// padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
// crossAxisSpacing: 10,
// mainAxisSpacing: 10,
// crossAxisCount: 4,
// childAspectRatio: (5 / 1),
// shrinkWrap: true,
// children: <Widget>[
// for (int i = 0; i < services.length; i++)
// Container(
// alignment: Alignment.centerLeft,
// padding: const EdgeInsets.only(left: 5),
// child: Row(
// children: [
// Image.asset(images[i]),
// Text(
// services[i],
// style: TextStyle(fontSize: 12),
// ),
// ],
// ),
// decoration: BoxDecoration(
// border: Border.all(color: const Color(0xff10ac84)),
// ),
// ),
// ],
// )