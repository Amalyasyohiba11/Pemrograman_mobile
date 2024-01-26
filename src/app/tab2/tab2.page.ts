import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ToastController } from '@ionic/angular';
import { PostProvider } from '../../providers/post-provider';
@Component({
 selector: 'app-tab2',
 templateUrl: 'tab2.page.html',
 styleUrls: ['tab2.page.scss']
})
export class Tab2Page implements OnInit {
 nama: string = '';
 nohp: string = '';
 jenis_kelamin: string = '';
 tanggal_lahir: string = '';
 alamat: string = '';
 email: string = '';
 klinik: string = '';
 pembayaran: string = '';
 
 constructor(
 private router: Router,
 public toastController: ToastController,
 private postPvdr: PostProvider,
 ) { 
 }
 
  ngOnInit() {
  }
  async addRegister() {
  if (this.nama == '') {
  const toast = await this.toastController.create({
  message: 'Nama lengkap harus di isi',
  duration: 2000
  });
  toast.present();
  } else if (this.nohp == '') {
  const toast = await this.toastController.create({
  message: 'No HP/WA harus di isi',
  duration: 2000
  });
  toast.present();
} else if (this.jenis_kelamin == '') {
const toast = await this.toastController.create({
message: 'jenis kelamin harus di isi',
duration: 2000
});
toast.present();
} else if (this.tanggal_lahir == '') {
const toast = await this.toastController.create({
message: 'Tanggal Lahir harus di isi',
duration: 2000
});
toast.present();
} else if (this.alamat == '') {
const toast = await this.toastController.create({
message: 'Alamat harus di isi',
duration: 2000
});
toast.present();
} else if (this.email == '') {
const toast = await this.toastController.create({
message: 'Email harus di isi',
duration: 2000
});
toast.present();
} else if (this.klinik == '') {
const toast = await this.toastController.create({
message: 'Klinik harus di isi',
duration: 2000
});
toast.present();
} else if (this.pembayaran == '') {
const toast = await this.toastController.create({
message: 'Pembayaran harus di isi',
duration: 2000
});

  
  toast.present();
  } else {
  let body = {
  nama: this.nama,
  nohp: this.nohp,
  jenis_kelamin: this.jenis_kelamin,
  tanggal_lahir: this.tanggal_lahir,
  alamat: this.alamat,
  email: this.email,
  klinik: this.klinik,
  pembayaran: this.pembayaran,

  
  aksi: 'add_register'
  };
  this.postPvdr.postData(body, 'action.php').subscribe(async data => {
  var alertpesan = data.msg;
  if (data.success) {

  const toast = await this.toastController.create({
    message: 'Selamat! Registrasi pasien sukses.',
    duration: 2000
    });
    toast.present();
    this.router.navigate(['/tab4']);
    } else {
    const toast = await this.toastController.create({
    message: alertpesan,
    duration: 2000
    });
    }
    });
    }
    }
    
    showPasien() {
    this.router.navigate(['/showpasien']);
    }

  }