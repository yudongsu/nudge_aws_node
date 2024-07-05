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
    return `<b>Server is running for</b> ${process.uptime()} seconds. <br><b>Nowtime(UTC)</b> ${formattedNow} <br>`;
  }
}
