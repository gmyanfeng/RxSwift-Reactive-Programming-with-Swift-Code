//
//  ViewController.swift
//  Chapter2_Observables
//
//  Created by liesheng on 2021/1/16.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        deferredDemo()
    }
}

extension ViewController {
    func deferredDemo() {
        example(of: "deferred") {
            let disposeBag = DisposeBag()
            
            var flip = false
            let factory = Observable<Int>.deferred({
                flip.toggle()
                if flip {
                    return Observable.of(1,2,3)
                }else{
                    return Observable.of(4,5,6)
                }
            })
            
            for _ in 0...3 {
                factory.subscribe(onNext: {
                    print($0, terminator: "")
                })
                .disposed(by: disposeBag)
                
                print()
            }
            
        }
    }
}

