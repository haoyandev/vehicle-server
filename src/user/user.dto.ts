import { IsBoolean, IsOptional, IsString, Length } from 'class-validator';

export class UserDTO {
  @IsString()
  username: string;
  @IsString()
  password: string;
  @IsString()
  @Length(11, 11, {
    message: '手机号码长度不合规范',
  })
  telephone: string;
  @IsBoolean()
  @IsOptional()
  isAdmin?: boolean;
}
