import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service'; // Importaremos o PrismaService que criaremos a seguir
import { User, Prisma } from '@prisma/client';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}

  // Encontra um usuário pelo email
  async findOne(email: string): Promise<User | undefined> {
    return this.prisma.user.findUnique({
      where: { email },
    });
  }

  // Cria um novo usuário
  async create(data: Prisma.UserCreateInput): Promise<User> {
    return this.prisma.user.create({
      data,
    });
  }
}
