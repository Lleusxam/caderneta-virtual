import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import Sidebar from "../../../components/Siderbar";
import Header from "../../../components/HeaderCadastrarProd";
import { produtos } from "../../../data/produtos";

export default function ProdutoDetalhes() {
  const [showConfirm, setShowConfirm] = useState(false);
  const router = useRouter();
  const { id } = router.query;

  const [produto, setProduto] = useState<any>(null);

  useEffect(() => {
    if (id) {
      const encontrado = produtos.find((p) => p.id === id);
      setProduto(encontrado);
    }
  }, [id]);

  if (!produto) return <div className="p-8">Carregando...</div>;

  return (
    <div className="flex">
      <Sidebar />
      <main className="flex-1 p-8">

      {showConfirm && (
  <div className="fixed inset-0 flex items-center justify-center bg-black bg-opacity-20 backdrop-blur-sm z-20">
    <div className="bg-white p-6 rounded shadow-md text-center w-full max-w-sm">
      <h2 className="text-xl font-semibold mb-4">Tem certeza que deseja remover esse produto?</h2>
      <p className="mb-6">Essa ação não poderá ser desfeita.</p>
      <div className="flex justify-end gap-4">
        <button
          onClick={() => setShowConfirm(false)}
          className="px-4 py-2 bg-gray-300 text-gray-700 rounded hover:bg-gray-400"
        >
          Cancelar
        </button>
        <button
          onClick={() => {
            // lógica de delete
            alert("Produto apagado!");
            setShowConfirm(false);
            router.push("/produtos");
          }}
          className="px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700"
        >
          Apagar
        </button>
      </div>
    </div>
  </div>
)}


        <Header />
        <h1 className="text-2xl font-bold mb-6">Detalhes do Produto</h1>

        <div className="space-y-4">
          <p><strong>Nome:</strong> {produto.nome}</p>
          <p><strong>Categoria:</strong> {produto.categoria}</p>
          <p><strong>Cor:</strong> {produto.cor}</p>
          <p><strong>Capacidade:</strong> {produto.capacidade}</p>
        </div>

        <div className="flex justify-end mt-8 gap-4">
          <button
            onClick={() => router.push(`/produtos/${id}/editar`)}
            className="bg-yellow-500 text-white px-4 py-2 rounded hover:bg-yellow-600"
          >
            Atualizar
          </button>
          <button
            onClick={() => setShowConfirm(true)}
            className="bg-red-600 text-white px-4 py-2 rounded hover:bg-red-700"
          >
            Apagar
          </button>

        </div>
      </main>
    </div>
  );
}
