import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ChatserviceService {

  apiUrl: string = 'http://127.0.0.1:5000';

  constructor(private http: HttpClient) { }

  sendQuestion(data: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/getAnswer`, data);
  }

  getConversations(): Observable<any> {
    return this.http.get(`${this.apiUrl}/getConversations`);
  }
}
