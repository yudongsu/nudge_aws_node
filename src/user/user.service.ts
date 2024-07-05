import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class UserService {
  constructor(private readonly prisma: PrismaService) {}

  async findUserByEmail(email: string) {
    const result = await this.prisma.$queryRaw`
      SELECT * FROM "User" WHERE email = ${email}
    `;
    return result;
  }

  async findUserById(id: number) {
    const result = await this.prisma.$queryRaw`
      SELECT * FROM "User" WHERE id = ${id}
    `;
    console.log(`SELECT * FROM "User" WHERE id = ${id}`);
    return result;
  }
}
