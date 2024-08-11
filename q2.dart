void main() {
  List<String> dataList = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];
  dataList.retainWhere((element) => element != 'eligible');
  print(dataList);
}
