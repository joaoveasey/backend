import { Controller, Delete, Get, Param, Post } from '@nestjs/common';
import { Produto } from 'src/core';
import { ProdutoPrisma } from './produto.prisma';

@Controller('produtos')
export class ProdutoController {
    constructor(readonly repo: ProdutoPrisma) {}

    @Post()
    async criarProduto(produto: Produto): Promise<Produto> {
        return this.repo.salvar(produto);
    }

    @Get()
    async obterProdutos(): Promise<Produto[]> {
        return this.repo.obter();
    }

    @Get(':id')
    async obterProdutosPorId(@Param('id') id:string): Promise<Produto | null> {
        return this.repo.obterPorId(+id);
    }

    @Delete(':id')
    async deletarProduto(@Param('id') id: string): Promise<void> {
        return this.repo.excluir(+id);
    }
}
