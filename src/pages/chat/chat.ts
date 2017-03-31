import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';

import { ViewChild } from '@angular/core';
import { Content } from 'ionic-angular';
import { AlertController } from 'ionic-angular';
import { PopoverController } from 'ionic-angular';
import { Platform } from 'ionic-angular';
import { Geolocation } from '@ionic-native/geolocation';

import { Bot } from '../../providers/bot';

import { LoginPage } from '../login/login';

import { SpinnerPopoverComponent } from '../../components/spinner-popover/spinner-popover';
import { SearchSelectMultiComponent } from '../../components/search-select-multi/search-select-multi';


/*
  Generated class for the Chat page.

  See http://ionicframework.com/docs/v2/components/#navigation for more info on
  Ionic pages and navigation.
*/
@Component({
  selector: 'page-chat',
  templateUrl: 'chat.html'
})
export class ChatPage {

  @ViewChild(Content) content: Content;

  public messages = [];
  public chatMsg = '';
  public popover: any;
  public userLocation: any;

  public selected_food = [];
  public selected_parsed = [];
  public food_labels = [];
  public popoverOpts = {
    items: [],
    labels: ['food_name', 'restaurant_name'],
    value: 'food_id',
    title: 'Food'
  };

  constructor(private platform: Platform,
              private navCtrl: NavController,
              private navParams: NavParams,
              private alertCtrl: AlertController,
              private popoverCtrl: PopoverController,
              private geolocation: Geolocation,
              private bot: Bot) {

       platform.ready().then(() => {

         // get current position
         this.geolocation.getCurrentPosition()
             .then((resp) => {
               this.userLocation = {
                  latitude: resp.coords.latitude,
                  longitude: resp.coords.longitude
                };

               this.addMessage('You are at '+resp.coords.latitude+', '+resp.coords.longitude, false);
             }).catch((error) => {
               console.log('Error getting location', error);
               this.showError("Sorry, I can't get your location");
             });
    });

  }

  public logout() {
    this.navCtrl.setRoot(LoginPage, {}, {
      animate: true,
      direction: 'forward'
    });
  }

  public scrollToBottom() {
    this.content.scrollToBottom(500);
  }

  public send(message){
    // add user's message
    message = 'i want chicken from jollibee';
    this.addMessage(message);

    // clear text area
    this.chatMsg = '';

    // talk to api.ai
    this.processResponse(message);
  }

  public addMessage(message, sentByUser=true){
    this.messages.push({
      content: message,
      sentByUser: sentByUser
    });
  }


  public processResponse(message){
    // return new Promise((resolve, reject) => {
      // send something to api ai
      // api ai responds

    let data = {
      msg: message,
      location: this.userLocation
    };

    this.bot.sendToApiAi(data)
            .then(
                  (data) => {
                    // api.ai recognized something
                    let action = data['intentName'];

                    // add some interaction here,
                    // say show popover for menu?
                    // append some bot responses

                    switch (action) {
                      case "confirm":
                        this.showBuyConfirm();
                        break;
                      case "find-food":
                        this.showMenu();
                        break;
                      default:
                        break;
                    }

                    this.popoverOpts.items = data['rows'];
                    // resolve(data);
                  },
                  (error) => {
                    // sabi ni api.ai di nagets ng bot
                    // or something else
                    // reject();
                    this.showError("Sorry, but I do not understand.");
                  });
  }

  public hideLoading(){
    this.popover.dismiss();
  }

  public showError(message){
    this.addMessage(message, false);
  }

  public showLoading(){
    this.popover = this.popoverCtrl.create(SpinnerPopoverComponent, {}, {
      enableBackdropDismiss: false,
      showBackdrop: true
    });

    this.popover.present();
  }

  public showBuyConfirm(){
    let alert = this.alertCtrl.create({
      title: 'Confirm purchase',
      buttons: [
        {
          text: 'Cancel',
          role: 'cancel',
          handler: () => {
            this.addMessage('Order cancelled.', false);
          }
        },
        {
          text: 'Buy',
          handler: () => {
            // pseudo processing
            this.showLoading();
            setTimeout(() => {
              this.hideLoading();
              this.addMessage('Order confirmed. Thanks!', false);
            }, 5000);
          }
        }
       ]
      });

    alert.present();
  }

  public showMenu(){
    let popover = this.popoverCtrl.create(SearchSelectMultiComponent, this.popoverOpts, {
      showBackdrop: true,
      enableBackdropDismiss: false
    });

    popover.present();
    popover.onDidDismiss((data) => {
      this.selected_food = data;

      this.selected_parsed = data.map((item) => {
        return {
          food_id: item['food_id'],
          qty: item['qty']
        };
      });

      this.food_labels = data.map((item) => {
        return item['food_name'];
      });

      let food = this.food_labels.join(', ');
      let message = 'You selected: ' + food;
      this.addMessage(message, false);


    });
  }

}
