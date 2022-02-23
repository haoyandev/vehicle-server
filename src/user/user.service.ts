import { UserDTO } from './user.dto';
import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class UserService {
  constructor(private prismaService: PrismaService) {}
  async createUser(userDto: UserDTO) {
    return this.prismaService.users.create({ data: userDto });
  }
  async getUsers(_num: number, _page: number) {
    return this.prismaService.users.findMany({
      select: { uid: true, username: true, telephone: true },
      take: _num,
      skip: (_page - 1) * _num,
    });
  }
  async getUserCount() {
    return this.prismaService.users.count();
  }
}
