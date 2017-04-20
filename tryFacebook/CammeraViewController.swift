//
//  CammeraViewController.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/04/08.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit
import AVFoundation

class CammeraViewController: UIViewController {

//    
//    // セッション.
//    var mySession : AVCaptureSession!
//    // デバイス.
//    var myDevice : AVCaptureDevice!
//    // 画像のアウトプット.
//    var myImageOutput: AVCaptureStillImageOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        // セッションの作成.
//        mySession = AVCaptureSession()
//        
//        // デバイス一覧の取得.
//        let devices = AVCaptureDevice.devices()
//        
//        // バックカメラをmyDeviceに格納.
//        for device in devices! {
//            if((device as AnyObject).position == AVCaptureDevicePosition.back){
//                myDevice = device as! AVCaptureDevice
//            }
//        }
//        
//        // バックカメラからVideoInputを取得.
//        let videoInput = try! AVCaptureDeviceInput.init(device: myDevice)
//        // セッションに追加.
//        mySession.addInput(videoInput)
//        
//        // 出力先を生成.
//        myImageOutput = AVCaptureStillImageOutput()
//        
//        // セッションに追加.
//        mySession.addOutput(myImageOutput)
//        
//        // 画像を表示するレイヤーを生成.
//        let myVideoLayer = AVCaptureVideoPreviewLayer.init(session: mySession)
//        myVideoLayer?.frame = self.view.bounds
//        myVideoLayer?.videoGravity = AVLayerVideoGravityResizeAspectFill
//        
//        // Viewに追加.
//        self.view.layer.addSublayer(myVideoLayer!)
//        
//        // セッション開始.
//        mySession.startRunning()
//        
//        // UIボタンを作成.
//        let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
//        myButton.backgroundColor = UIColor.red
//        myButton.layer.masksToBounds = true
//        myButton.setTitle("撮影", for: .normal)
//        myButton.layer.cornerRadius = 20.0
//        myButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:self.view.bounds.height-50)
//        myButton.addTarget(self, action: #selector(onClickMyButton), for: .touchUpInside)
//        
//        // UIボタンをViewに追加.
//        self.view.addSubview(myButton);
        
    }
    
    // ボタンイベント.
//    func onClickMyButton(sender: UIButton){
//        
//        // ビデオ出力に接続.
//        // let myVideoConnection = myImageOutput.connectionWithMediaType(AVMediaTypeVideo)
//        let myVideoConnection = myImageOutput.connection(withMediaType: AVMediaTypeVideo)
//        
//        // 接続から画像を取得.
//        self.myImageOutput.captureStillImageAsynchronously(from: myVideoConnection, completionHandler: {(imageDataBuffer, error) in
//            if let e = error {
//                print(e.localizedDescription)
//                return
//            }
//            // 取得したImageのDataBufferをJpegに変換.
//            let myImageData = AVCapturePhotoOutput.jpegPhotoDataRepresentation(forJPEGSampleBuffer: imageDataBuffer!, previewPhotoSampleBuffer: nil)
//            // JpegからUIIMageを作成.
//            let myImage = UIImage(data: myImageData!)
//            // アルバムに追加.
//            UIImageWriteToSavedPhotosAlbum(myImage!, nil, nil, nil)
//        })
//    }


}
