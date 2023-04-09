import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class EmotionsService {

  apiUrl: string = 'http://127.0.0.1:5000';

  constructor(private http: HttpClient) { }

  sendText(data: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/getEmotion`, data);
  }
}
