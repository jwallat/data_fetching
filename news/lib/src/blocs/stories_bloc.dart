import "package:rxdart/rxdart.dart";
import "../models/item_model.dart";
import "../resources/repository.dart";

class StoriesBloc {
  final _repository = Repository();
  final _topIds = PublishSubject<List<int>>();

  // Getter to the stream
  Observable<List<int>> get topIds => _topIds.stream;

  fetchTopIds() async {
    final ids = await _repository.fetchTopIds();
    _topIds.sink.add(ids);
  }

  _itemsTransformer() {
    return ScanStreamTransformer(
      () {

      },
      <int, Future<ItemModel>>{},
    );
  }

  dispose() {
    _topIds.close();
  }
}