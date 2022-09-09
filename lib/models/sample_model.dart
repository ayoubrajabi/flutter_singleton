class SampleModel {
  String? _sampleValue;

  String get getSampleValue => _sampleValue ?? 'sample';

  set sampleValue(String value) {
    _sampleValue = value;
  }
}
