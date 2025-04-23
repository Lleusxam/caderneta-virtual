// src/pages/produtos.tsx
import Sidebar from "../components/Siderbar";
import Header from "../components/HeaderProdutos";
import ProductTable from "../components/ProductTable";

export default function Produtos() {
  return (
    <div className="flex">
      <Sidebar />
      <main className="flex-1 p-8">
        <Header />
        
        <div className="flex items-center gap-4 mb-4">
          <select className="border p-2">
            <option>Categoria</option>
            <option>Copos</option>
            <option>Garrafas</option>
          </select>
          <input
            type="text"
            placeholder="Digite para buscar"
            className="border p-2 flex-1"
          />
          <button className="bg-gray-300 px-4 py-2">Buscar</button>
        </div>

        <ProductTable />
      </main>
    </div>
  );
}
