import { Component } from '@angular/core';
import { EmotionsService } from 'src/app/services/emotions.service';

@Component({
  selector: 'app-emptions',
  templateUrl: './emptions.component.html',
  styleUrls: ['./emptions.component.css']
})
export class EmptionsComponent {
  path_img = '../../../assets/'
  img_see = ''
  input_emotion: string = ''
  emotion: string = ''
  happy = [
    this.path_img + 'happy.gif',
    this.path_img + 'happy (2).gif',
    this.path_img + 'happy (3).gif',
    this.path_img + 'happy (4).gif'
  ]

  sad = [
    this.path_img + 'sad.gif',
    this.path_img + 'sad (2).gif',
    this.path_img + 'sad (3).gif',
    this.path_img + 'sad (4).gif'
  ]

  constructor(private emotionsService: EmotionsService) {

  }

  send() {
    console.log(this.input_emotion);
    const data = { input_emotion: this.input_emotion }
    this.emotionsService.sendText(data).subscribe((res: any) => {

      if (res.message == '1') {
        this.emotion = '¡Es un texto positivo!'
        const randomIndex = Math.floor(Math.random() * this.happy.length);
        this.img_see = this.happy[randomIndex];

      } else if (res.message == '0') {
        this.emotion = 'No podría decirte si es algo positivo o negativo, puedes intentar cambiar palabras del texto.'
        this.img_see = '../../../assets/124251-neutral.gif'
      } else if (res.message == '-1') {
        this.emotion = '¡Es un texto negativo!'
        const randomIndex = Math.floor(Math.random() * this.sad.length);
        this.img_see = this.sad[randomIndex];
      }
    });
  }

}
