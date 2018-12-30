//
//  ViewController.swift
//  WalkMap
//
//  Created by Masahiro Ichikawa on 2018/12/03.
//  Copyright © 2018年 Masahiro Ichikawa. All rights reserved.
//
import UIKit

class ViewController: UIViewController, YMKMapViewDelegate {
    var map: YMKMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // YMKMapViewのインスタンスを作成
        map = YMKMapView(frame: CGRect(x:0, y:0, width:320, height:320), appid: "dj00aiZpPUx0M1VrNDBoTUJjciZzPWNvbnN1bWVyc2VjcmV0Jng9NjM-")
        
        // 地図のタイプを指定 標準の地図を指定
        map!.mapType = UInt(YMKMapTypeStandard)
        
        // YMKMapViewを追加
        self.view = map!
        
        // YMKMapViewDelegateを登録
        map!.delegate = self
        
        // 地図の位置と縮尺を設定
        var center = CLLocationCoordinate2D.init();
        center.latitude = 35.6657214;
        center.longitude = 139.7310058;
        map!.region = YMKCoordinateRegionMake(center, YMKCoordinateSpanMake(0.002, 0.002));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

