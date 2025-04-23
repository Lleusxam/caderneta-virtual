// src/pages/produtos.tsx
import Sidebar from "../../components/Siderbar";
import Header from "../../components/HeaderCadastrarProd";

export default function CadastroProduto() {
  return (
    <div className="flex">
      <Sidebar />
      <main className="flex-1 p-8">
        <Header />
        <form className="grid gap-4 max-w-2xl w-full">
  <div>
    <label className="block mb-1 font-medium">Nome do Produto:</label>
    <input
      type="text"
      placeholder="Nome do produto"
      className="w-full border p-2 rounded"
    />
  </div>

  <div>
    <label className="block mb-1 font-medium">Categoria:</label>
    <input
      type="text"
      placeholder="Tipo (ex: Garrafa, Pote)"
      className="w-full border p-2 rounded"
    />
  </div>

  <div>
    <label className="block mb-1 font-medium">Cor:</label>
    <input
      type="text"
      placeholder="Cor"
      className="w-full border p-2 rounded"
    />
  </div>

  <div>
    <label className="block mb-1 font-medium">Capacidade e unidade de medida:</label>
    <input
      type="text"
      placeholder="Tamanho (ex: 310ml, 1,2L)"
      className="w-full border p-2 rounded"
    />
  </div>

  <div className="flex justify-end">
    <button
      type="submit"
      className="bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700"
    >
      Cadastrar
    </button>
  </div>
</form>

      </main>
    </div>
  );
}
