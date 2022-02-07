abstract class ItemView {}

abstract class DataItemView<I> extends ItemView {
  I data;

  DataItemView(this.data);

  @override
  String toString() {
    return data.toString();
  }
}

class LoadingItemView extends ItemView {
  static final instance = LoadingItemView._();

  LoadingItemView._();
}

class ErrorItemView extends ItemView {
  final Error error;

  ErrorItemView({
    required this.error,
  }): super();
}

class WFSelectorItem<D> {
  final D item;
  bool selected;

  WFSelectorItem({
    required this.item,
    this.selected = false,
  });

  WFSelectorItem<D> toggleSelection() {
    return WFSelectorItem<D>(
      item: item,
      selected: !selected
    );
  }

  @override
  String toString() {
    return item.toString();
  }
}