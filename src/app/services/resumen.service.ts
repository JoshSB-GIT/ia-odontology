import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ResumenService {

  apiUrl: string = 'http://127.0.0.1:5000';

  constructor(private http: HttpClient) { }

  getResume(data: any): Observable<any> {
    return this.http.post<any>(`${this.apiUrl}/getResume`, data);
  }
}
