import { UserController } from './user.controller';
import { UserService } from './user.service';
import { Module } from '@nestjs/common';
import { PrismaModule } from '../prisma/prisma.module';

@Module({
  imports: [PrismaModule],
  providers: [UserService],
  controllers: [UserController],
})
export class UserModule {}
