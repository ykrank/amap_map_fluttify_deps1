import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:demo_widgets/demo_widgets.dart';
import 'package:flutter/material.dart';

final _assetsIcon = AssetImage('images/test_icon.png');

class MultiMapScreen extends StatefulWidget {
  @override
  _MultiMapScreenState createState() => _MultiMapScreenState();
}

class _MultiMapScreenState extends State<MultiMapScreen> {
  AmapController _controller1;
  AmapController _controller2;
  AmapController _controller;
  String _currentInstance = '地图1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义地图')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            child: AmapView(
              key: Key('map1'),
              showZoomControl: false,
              maskDelay: Duration(milliseconds: 500),
              onMapCreated: (controller) async {
                _controller1 = controller;
                _controller = _controller1;
              },
            ),
          ),
          Flexible(
            child: AmapView(
              key: Key('map2'),
              showZoomControl: false,
              maskDelay: Duration(milliseconds: 500),
              onMapCreated: (controller) async {
                _controller2 = controller;
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              scrollable: true,
              divider: kDividerZero,
              children: <Widget>[
                DiscreteSetting(
                  head: '选择地图实例 当前实例: $_currentInstance',
                  options: <String>['地图1', '地图2'],
                  onSelected: (String value) {
                    switch (value) {
                      case '地图1':
                        setState(() {
                          _currentInstance = '地图1';
                          _controller = _controller1;
                        });
                        break;
                      case '地图2':
                        setState(() {
                          _currentInstance = '地图2';
                          _controller = _controller2;
                        });
                        break;
                    }
                  },
                ),
                BooleanSetting(
                  head: '是否显示定位',
                  onSelected: (value) async {
                    await _controller?.showMyLocation(MyLocationOption(
                      show: value,
                    ));
                  },
                ),
                DiscreteSetting(
                  head: '选择定位模式',
                  options: <String>[
                    '只定位不移动地图到中心',
                    '定位一次并移动地图到中心',
                    '连续定位并跟随',
                    '连续定位跟随方向',
                  ],
                  onSelected: (String value) async {
                    if (value == '只定位不移动地图到中心') {
                      await _controller?.showMyLocation(MyLocationOption(
                        myLocationType: MyLocationType.Show,
                      ));
                    } else if (value == '定位一次并移动地图到中心') {
                      await _controller?.showMyLocation(MyLocationOption(
                        myLocationType: MyLocationType.Locate,
                      ));
                    } else if (value == '连续定位并跟随') {
                      await _controller?.showMyLocation(MyLocationOption(
                        myLocationType: MyLocationType.Follow,
                      ));
                    } else if (value == '连续定位跟随方向') {
                      await _controller?.showMyLocation(MyLocationOption(
                        myLocationType: MyLocationType.Rotate,
                      ));
                    }
                  },
                ),
                ListTile(
                  title: Center(child: Text('获取当前位置经纬度')),
                  onTap: () async {
                    final latLng = await _controller?.getLocation();
                    toast('当前经纬度: ${latLng.toString()}');
                  },
                ),
                ListTile(
                  title: Center(child: Text('使用自定义定位图标')),
                  onTap: () async {
                    await _controller?.showMyLocation(MyLocationOption(
                      myLocationType: MyLocationType.Rotate,
                      iconProvider: _assetsIcon,
                    ));
                  },
                ),
                BooleanSetting(
                  head: '是否显示室内地图',
                  onSelected: (value) {
                    _controller?.showIndoorMap(value);
                  },
                ),
                DiscreteSetting(
                  head: '切换地图图层',
                  options: ['正常视图', '卫星视图', '黑夜视图', '导航视图', '公交视图'],
                  onSelected: (value) {
                    switch (value) {
                      case '正常视图':
                        _controller?.setMapType(MapType.Standard);
                        break;
                      case '卫星视图':
                        _controller?.setMapType(MapType.Satellite);
                        break;
                      case '黑夜视图':
                        _controller?.setMapType(MapType.Night);
                        break;
                      case '导航视图':
                        _controller?.setMapType(MapType.Navi);
                        break;
                      case '公交视图':
                        _controller?.setMapType(MapType.Bus);
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '切换语言',
                  options: ['中文', '英文'],
                  onSelected: (value) {
                    switch (value) {
                      case '中文':
                        _controller?.setMapLanguage(Language.Chinese);
                        break;
                      case '英文':
                        _controller?.setMapLanguage(Language.English);
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈边框颜色',
                  options: ['红色', '绿色', '蓝色'],
                  onSelected: (value) {
                    switch (value) {
                      case '红色':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeColor: Colors.red,
                          strokeWidth: 2,
                        ));
                        break;
                      case '绿色':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeColor: Colors.green,
                          strokeWidth: 2,
                        ));
                        break;
                      case '蓝色':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeColor: Colors.blue,
                          strokeWidth: 2,
                        ));
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈填充颜色',
                  options: ['红色', '绿色', '蓝色'],
                  onSelected: (value) {
                    switch (value) {
                      case '红色':
                        _controller?.showMyLocation(MyLocationOption(
                          fillColor: Colors.red,
                          strokeWidth: 2,
                        ));
                        break;
                      case '绿色':
                        _controller?.showMyLocation(MyLocationOption(
                          fillColor: Colors.green,
                          strokeWidth: 2,
                        ));
                        break;
                      case '蓝色':
                        _controller?.showMyLocation(MyLocationOption(
                          fillColor: Colors.blue,
                          strokeWidth: 2,
                        ));
                        break;
                    }
                  },
                ),
                DiscreteSetting(
                  head: '精度圈边框宽度',
                  options: ['2', '4', '8'],
                  onSelected: (value) {
                    switch (value) {
                      case '2':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeWidth: 2,
                        ));
                        break;
                      case '4':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeWidth: 4,
                        ));
                        break;
                      case '8':
                        _controller?.showMyLocation(MyLocationOption(
                          strokeWidth: 8,
                        ));
                        break;
                    }
                  },
                ),
                BooleanSetting(
                  head: '是否显示路况信息',
                  onSelected: (value) {
                    _controller?.showTraffic(value);
                  },
                ),
                ListTile(
                  title: Center(child: Text('获取地图中心点')),
                  onTap: () async {
                    final center = await _controller?.getCenterCoordinate();
                    toast(
                        'center: lat: ${center.latitude}, lng: ${center.longitude}');
                  },
                ),
                ListTile(
                  title: Center(child: Text('监听地图移动')),
                  onTap: () {
                    _controller?.setMapMoveListener(
                      onMapMoveStart: (move) async => toast('开始移动: $move'),
                      onMapMoveEnd: (move) async => toast('结束移动: $move'),
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('添加点击地图监听')),
                  onTap: () {
                    _controller?.setMapClickedListener(
                      (latLng) async {
                        toast(
                          '点击: lat: ${latLng.latitude}, lng: ${latLng.longitude}',
                        );
                      },
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('自定义地图')),
                  onTap: () {
                    _controller?.setCustomMapStyle(
                      styleDataPath: 'raw/style.data',
                      styleExtraPath: 'raw/style_extra.data',
                    );
                  },
                ),
                ListTile(
                  title: Center(child: Text('经纬度坐标转屏幕坐标')),
                  onTap: () async {
                    final centerLatLng =
                        await _controller.getCenterCoordinate();
                    final screenPoint =
                        await _controller?.toScreenLocation(centerLatLng);
                    toast('地图中心点对应的屏幕坐标为: $screenPoint');
                  },
                ),
                ListTile(
                  title: Center(child: Text('屏幕坐标转经纬度坐标')),
                  onTap: () async {
                    final screenPoint = Point(250, 250);
                    final latLng =
                        await _controller?.fromScreenLocation(screenPoint);
                    toast('屏幕坐标(250, 250)对应的经纬度坐标为: $latLng');
                  },
                ),
                ListTile(
                  title: Center(child: Text('监听位置改变')),
                  onTap: () async {
                    await _controller
                        ?.setMyLocationChangeListener((location) async {
                      final coord = await location.coord;
                      toast(
                        '当前位置: 经度: ${coord.latitude}, 纬度: ${coord.longitude}, 方向: ${await location.bearing}',
                      );
                    });
                  },
                ),
                ListTile(
                  title: Center(child: Text('设置以地图为中心进行缩放')),
                  onTap: () async {
                    await _controller?.setZoomByCenter(true);
                  },
                ),
                ListTile(
                  title: Center(child: Text('限制地图显示范围')),
                  onTap: () async {
                    final southWest = LatLng(40, 116);
                    final northEast = LatLng(42, 118);
                    await _controller?.setMapRegionLimits(southWest, northEast);
                  },
                ),
                ListTile(
                  title: Center(child: Text('获取当前缩放等级')),
                  onTap: () async {
                    toast('当前缩放等级: ${await _controller.getZoomLevel()}');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
