import { Component } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { ResumenService } from 'src/app/services/resumen.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-resume',
  templateUrl: './resume.component.html',
  styleUrls: ['./resume.component.css']
})
export class ResumeComponent {

  formulario = new FormGroup({
    url_page: new FormControl(''),
    min_letters: new FormControl(''),
    translate: new FormControl()
  });
  response: string = ''

  constructor(private resumenService: ResumenService) {

  }

  submitForm() {
    const url_page = this.formulario.value.url_page
    const min_letters = this.formulario.value.min_letters
    let translate = this.formulario.value.translate

    if (url_page == '' || min_letters == '') {
      Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Something went wrong!'
      })
    } else {

      if (translate == null) {
        translate = '0';
      } else {
        translate = '1';
      }

      const data = {
        url_page: url_page,
        min_letters: min_letters?.toString(),
        translate: translate
      }

      console.log(data);
      this.resumenService.getResume(data).subscribe((res: any) => {
        this.response = res.message
      })

      this.formulario = new FormGroup({
        url_page: new FormControl('' + url_page),
        min_letters: new FormControl(''),
        translate: new FormControl()
      });

      Swal.fire({
        icon: 'success',
        title: 'Resumen generado'
      });
    }

  }

}
