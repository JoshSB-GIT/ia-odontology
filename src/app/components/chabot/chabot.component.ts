import { Component, ElementRef, ViewChild } from '@angular/core';
import { ChatserviceService } from 'src/app/services/chatservice.service';

@Component({
  selector: 'app-chabot',
  templateUrl: './chabot.component.html',
  styleUrls: ['./chabot.component.css'],
})
export class ChabotComponent {
  @ViewChild('myDiv', { static: false }) myDivRef: ElementRef | null = null;
  input_user: string = '';
  answers: any = [];

  constructor(private chatService: ChatserviceService) {}

  send() {
    if (this.input_user != '') {
      const data = { input_user: this.input_user };
      this.chatService.sendQuestion(data).subscribe((res: any) => {
        this.answers.push(res);
        this.input_user = '';
      });
    }
  }

  scroll_bottom() {
    if (this.myDivRef) {
      this.myDivRef.nativeElement.scrollTop =
        this.myDivRef.nativeElement.scrollHeight;
    }
  }

  execute_functs(): void {
    this.send();
    setTimeout(() => {
      this.scroll_bottom();
    }, 100);
  }
}
