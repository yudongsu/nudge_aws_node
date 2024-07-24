import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World2!';
  }

  getUptime() {
    const now = new Date();
    const formattedNow = now
      .toISOString()
      .replace(/T/, ' ')
      .replace(/\..+/, '');

    const returnText = `<b>Server is running for</b> ${process.uptime()} seconds. <br>
    <b>Nowtime(UTC)</b> ${formattedNow} <br> 
    <b>NODE_ENV</b> : ${process.env.NODE_ENV} <br> 
    <b>DATABASE_URL</b> : ${process.env.DATABASE_URL} <br>`;

    return returnText;
  }
}
