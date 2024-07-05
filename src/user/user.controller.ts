import { Controller, Get, Param, Query } from '@nestjs/common';
import { UserService } from './user.service';
import { ApiOperation, ApiQuery, ApiResponse } from '@nestjs/swagger';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @ApiOperation({ summary: 'Find user by email' })
  @Get('find-by-email')
  @ApiQuery({
    name: 'email',
    required: true,
    description: 'User email address',
  })
  @ApiResponse({ status: 200, description: 'User found' })
  @ApiResponse({ status: 404, description: 'User not found' })
  async findUserByEmail(@Query('email') email: string) {
    return this.userService.findUserByEmail(email);
  }

  @ApiOperation({ summary: 'Get user by ID' })
  @Get(':id')
  async getUserById(@Param('id') id: string) {
    return this.userService.findUserById(Number(id));
  }
}
