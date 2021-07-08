class Currency {
  String _time;
  String _assetIdBase;
  String _assetIdQuote;
  double _rate;
  List<SrcSideBase> _srcSideBase;

  Currency(
      {String time,
        String assetIdBase,
        String assetIdQuote,
        double rate,
        List<SrcSideBase> srcSideBase}) {
    this._time = time;
    this._assetIdBase = assetIdBase;
    this._assetIdQuote = assetIdQuote;
    this._rate = rate;
    this._srcSideBase = srcSideBase;
  }

  String get time => _time;
  set time(String time) => _time = time;
  String get assetIdBase => _assetIdBase;
  set assetIdBase(String assetIdBase) => _assetIdBase = assetIdBase;
  String get assetIdQuote => _assetIdQuote;
  set assetIdQuote(String assetIdQuote) => _assetIdQuote = assetIdQuote;
  double get rate => _rate;
  set rate(double rate) => _rate = rate;
  List<SrcSideBase> get srcSideBase => _srcSideBase;
  set srcSideBase(List<SrcSideBase> srcSideBase) => _srcSideBase = srcSideBase;

  Currency.fromJson(Map<String, dynamic> json) {
    _time = json['time'];
    _assetIdBase = json['asset_id_base'];
    _assetIdQuote = json['asset_id_quote'];
    _rate = json['rate'];
    if (json['src_side_base'] != null) {
      _srcSideBase = new List<SrcSideBase>();
      json['src_side_base'].forEach((v) {
        _srcSideBase.add(new SrcSideBase.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this._time;
    data['asset_id_base'] = this._assetIdBase;
    data['asset_id_quote'] = this._assetIdQuote;
    data['rate'] = this._rate;
    if (this._srcSideBase != null) {
      data['src_side_base'] = this._srcSideBase.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SrcSideBase {
  String _time;
  String _asset;
  double _rate;
  double _volume;

  SrcSideBase({String time, String asset, double rate, double volume}) {
    this._time = time;
    this._asset = asset;
    this._rate = rate;
    this._volume = volume;
  }

  String get time => _time;
  set time(String time) => _time = time;
  String get asset => _asset;
  set asset(String asset) => _asset = asset;
  double get rate => _rate;
  set rate(double rate) => _rate = rate;
  double get volume => _volume;
  set volume(double volume) => _volume = volume;

  SrcSideBase.fromJson(Map<String, dynamic> json) {
    _time = json['time'];
    _asset = json['asset'];
    _rate = json['rate'];
    _volume = json['volume'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this._time;
    data['asset'] = this._asset;
    data['rate'] = this._rate;
    data['volume'] = this._volume;
    return data;
  }
}
