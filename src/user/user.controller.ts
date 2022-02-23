import { UserDTO } from './user.dto';
import { UserService } from './user.service';
import { Controller, Get, Post, Body, UsePipes, Query } from '@nestjs/common';
import { ValidationPipe } from 'src/pipe/validation.pipe';

@Controller('api/v1/users')
export class UserController {
  constructor(private userService: UserService) {}
  @Get()
  async getUsers(@Query() params) {
    let { _num, _page } = params;
    if (!_num) _num = 10;
    if (!_page) _page = 1;
    const items = await this.userService.getUsers(Number(_num), Number(_page));
    const total = await this.userService.getUserCount();
    return {
      total,
      items,
    };
  }
  @UsePipes(new ValidationPipe())
  @Post()
  async createUser(@Body() user: UserDTO) {
    const { username, telephone } = await this.userService.createUser(user);
    const newUser = { username, telephone };
    return {
      code: 0,
      message: `创建用户成功`,
      detail: newUser,
    };
  }
}
