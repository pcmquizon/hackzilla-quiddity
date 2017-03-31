import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';

import { Platform } from 'ionic-angular';
import { ToastController } from 'ionic-angular';

import { User } from '../../providers/user';

import { ChatPage } from '../chat/chat';

/*
  Generated class for the Login page.

  See http://ionicframework.com/docs/v2/components/#navigation for more info on
  Ionic pages and navigation.
*/
@Component({
  selector: 'page-login',
  templateUrl: 'login.html'
})
export class LoginPage {

  public user = {
    username: '',
    password: '',
  };

  constructor(public navCtrl: NavController,
              private platform: Platform,
              private toastCtrl: ToastController,
              private userProvider: User) {

    platform.ready().then(() => {
      console.log("LOGIN ready");
    });
  }

  private presentToast() {
    let toast = this.toastCtrl.create({
      message: 'Login failed. Check if you have an active Quiddity account.',
      duration: 5000,
      position: 'bottom',
      showCloseButton: true,
    });

    toast.onDidDismiss(() => {
      console.log('Dismissed toast');
    });

    toast.present();
  }

  public login(){
    this.userProvider.login(this.user)
        .then(
              (result) => {
                console.log('login OK');
                this.navCtrl.setRoot(ChatPage, {}, {
                  animate: true,
                  direction: 'forward'
                });
              },
              (error) => {
                console.log("ERROR: ", JSON.stringify(error));
                this.presentToast();
              });
  }

}
