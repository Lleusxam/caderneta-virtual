import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import Sidebar from "../../../components/Siderbar";
import Header from "../../../components/HeaderCadastrarProd";
import { produtos } from "../../../data/produtos";

export default function EditarProduto() {
  const router = useRouter();
  const { id } = router.query;

  const [form, setForm] = useState({
    nome: "",
    categoria: "",
    cor: "",
    capacidade: ""
  });

  useEffect(() => {
    if (id) {
      const produto = produtos.find((p) => p.id === id);
      if (produto) {
        setForm({
          nome: produto.nome,
          categoria: produto.categoria,
          cor: produto.cor,
          capacidade: produto.capacidade
        });
      }
    }
  }, [id]);

  function handleChange(e: React.ChangeEvent<HTMLInputElement>) {
    setForm({ ...form, [e.target.name]: e.target.value });
  }

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    console.log("Produto atualizado:", form);
    alert("Produto atualizado com sucesso!");
    router.push(`/produtos/${id}`);
  }

  return (
    <div className="flex">
      <Sidebar />
      <main className="flex-1 p-8">
        <Header />
        <h1 className="text-2xl font-bold mb-6">Editar Produto</h1>

        <form onSubmit={handleSubmit} className="grid gap-4 max-w-md">
          <div>
            <span>Nome:</span>
            <input
              name="nome"
              type="text"
              value={form.nome}
              onChange={handleChange}
              className="border p-2 rounded w-full"
            />
          </div>

          <div>
            <span>Categoria:</span>
            <input
              name="categoria"
              type="text"
              value={form.categoria}
              onChange={handleChange}
              className="border p-2 rounded w-full"
            />
          </div>

          <div>
            <span>Cor:</span>
            <input
              name="cor"
              type="text"
              value={form.cor}
              onChange={handleChange}
              className="border p-2 rounded w-full"
            />
          </div>

          <div>
            <span>Capacidade:</span>
            <input
              name="capacidade"
              type="text"
              value={form.capacidade}
              onChange={handleChange}
              className="border p-2 rounded w-full"
            />
          </div>

          <div className="flex justify-end">
            <button
              type="submit"
              className="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700"
            >
              Salvar
            </button>
          </div>
        </form>
      </main>
    </div>
  );
}
